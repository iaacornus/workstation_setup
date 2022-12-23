ls
cd lists/i
cd lists/
ls
flatpak list > flatpak.list
ls ~/Music/ music.list 
rpm-ostree status > rpm-ostree.info
clear
cd ..
git st
git add .
git cm -m "update"
git ph
cat .bashrc
backup
toolbox-upgrade 
exit
toolbox enter fedora-toolbox-35 
toolbox-upgrade 
exit
toolbox enter dev-tools 
toolbox-upgrade 
exit
toolbox-upgrade 
exit
dev-env 
toolbox enter
cd .sys/
ls
nano backup-general.sh 
cp backup-* ~/Development/workstation_setup/main_ws/utils/
cd
cd Development/workstation_setup/
git st
git cm -am "use rsync and include more exclusion"
git ph
git st
git add .
git cm -am "update default wallpaper"
git ph
rpm -qa
rpm -qa | grep gnome
rpm-ostree install --help
rpm-ostree status -v
gsettings get org.gnome.desktop.interface gtk-theme
cd ~/.config/gtk-4.0/
ls
nano settings.ini 
mkdir -p ~/.config/environment.d
echo 'GTK_THEME=Yaru-purple' > ~/.config/environment.d/gtk_theme.conf
nano ~/.profile 
cp ~/.profile ~/Development/workstation_setup/main_ws/config/
cp -r ~/.config/environment.d/ ~/Development/workstation_setup/main_ws/config/
cp ~/.config/gtk-4.0/ ~/Development/workstation_setup/main_ws/config/
cp -r ~/.config/gtk-4.0/ ~/Development/workstation_setup/main_ws/config/
cd Development/workstation_setup/
git st
git add .
git cm -am "gtk 4.0 settings"
git ph
git st
git add .
git cm -am "more yaru settings"
git ph
poweroff
cd ~/.config/gtk-4.0/
ls
nano settings.ini 
cd
cp -r ~/.config/gtk-4.0/ ~/Development/workstation_setup/main_ws/config/
nano ~/.config/environment.d/ 
cd ~/.config/environment.d/ 
ls
nano gtk_theme.conf 
cd
rm -r ~/.config/environment.d
clear
nano ~/.profile 
cp ~/.profile ~/Development/workstation_setup/main_ws/config/
systemctl reboot
sudo flatpak override --system --reset
systemctl reboot
rpm-ostree status
rpm-ostree install gnome-shell-extension-dash-to-dock
systemctl reboot
flatpak update
rpm-ostree upgrade
systemctl reboot
cd Development/DNAnalyzer/
cd src/
gtree
cd ..
gtree
cd
cd .sayu/
ls
cat sayu.log 
cd Development/DNAnalyzer/
git bh
git ch main
clear
git st
ls
rm -rf archives/
clear
git st
ls
mkdir archives
mv src/ archives/
clear
git st
cd src/
mkdir gui
mkdir resources
clear
python
source /var/home/iaacornus/Development/sayu/venv/bin/activate
/var/home/iaacornus/Development/sayu/venv/bin/python /var/home/iaacornus/Development/sayu/scripts/indexing.py
clear
clear/var/home/iaacornus/Development/sayu/venv/bin/python /var/home/iaacornus/Development/sayu/scripts/indexing.py
/var/home/iaacornus/Development/sayu/venv/bin/python /var/home/iaacornus/Development/sayu/scripts/indexing.py
python -m rich markdown
cd Development/sayu/
clear
cd scripts/
ls
mkdir system
git st
git add system/
git st
git cm -m "setup script"
cd ..
ls
clear
python scripts/indexing.py 
clear
python scripts/indexing.py 
clear
python scripts/indexing.py 
clear
python
git st
git add src/__
git add src/__init__.py 
clear
git st
git add scripts/__init__.py 
clear
git st
git cm -m "mark as package"
clear
python scripts/indexing.py 
python src/utils/misc/indexing.py 
python -m src/utils/misc/indexing.py 
python -m src/utils/misc/indexing
python -m src.utils.misc.indexing
clear
git st
git add src/
git st
git cm -m "simple index algorithm for a given path"
clear
git st
git add src/
git st
git add scripts/
git st
git cm -m "revert making scripts into package"
clear
git st
git add src/utils/core/
git cm -m "make a core utils subpackage"
git st
git add .
git cm -m "restructure the project"
./update_readme.sh 
clear
git st
git cm -am "update project directory"
clear
cd .sayu/
ls
cat file_index 
clear
cat file_index 
clear
cat file_index 
cd Development/iota-2
clear
git st
ls
cd src/
ls
tree
cd utils/file_shasum/
ls
bat shasum_index.py 
bat file_shasum.py 
cd Development/sayu/
gtree
cd
cd Development/DNAnalyzer/
git ch rewrite
gtree
cd
cd Development/DNAnalyzer/
git ch main
gtree
bat src/main/java/DNAnalyzer/Properties.java 
cd Development/sayu/
git ph
cd Development/DNAnalyzer/
git fetch
git pull
code .
git pull https://github.com/Verisimilitude11/DNAnalyzer -b main
git pull main https://github.com/Verisimilitude11/DNAnalyzer 
git pull https://github.com/Verisimilitude11/DNAnalyzer main
flatpak update
rpm-ostree upgrade
systemctl reboot
exit
cd .config/systemd/
ls
cd user/
ls
cd Development/sayu/
git st
git add .
git cm -m "documentation of packages"
git st
git cm -am "fix type hints error"
git st
git add system/
git st
git cm -m "restructure system/"
git st
git add .
git cm -m "rename the function and update the function calls"
git st
git add .
git ur .
git st
git add assets/
git st
git cm -m "organize assets/misc by adding further subdirectory"
clear
git st
git cm -am "update script calls"
git st
git add figs/
git st
git cm -m "update figure"
git ph
git st
git cm -am "install dependency function"
git st
gt st
git st
git add scripts/system/setup.sh 
git cm -m "initial function for systemd services setup"
clear
git st
git add .gitignore 
git cm -m "ignore missing.lists temp file"
git st
git add .
git ur system/service.list 
git st
git cm -m "move system-related files to system/ dir"
clear
git add .
git cm -m "service lists"
clear
git ph
git st
git cm -am "setup_dir() to setup the needed directories"
clear
./update_readme.sh 
clear
git st
./update_readme.sh 
git st
git add assets/
git cm -m "fix path"
git cm -am "update project structure documentation"
clear
git st
./update_readme.sh 
git st
git add update_readme.sh 
git st
./update_readme.sh 
git st
git am
git ac
clear
git st
git ph
git rebase --continue
clear
git st
git rebase --continue
git am
git am --abort
clear
git st
git ph
git st
git cm -am "include main function"
clear
git st
git ph
git st
git add .
git st
git cm -m "split workflow into two"
clear
git ph
git st
git cm -am "rename pycheck workflow name"
clear
git ph
git st
git cm -am "update window manager and display protocol"
git st
git add system/
git st
git cm -m "update readme"
git add check.sh 
git cm -m "remove extra space"
git st
git add assets/
git cm -m "update readme template"
./update_readme.sh 
git st
git cm -m "update readme"
git cm -am "update readme"
git st
git ph
source venv/bin/activate
clear
./check.sh 
clear
ls
xargs -a sysdeps.txt
xargs sudo dnf install <sysdepds.txt
xargs sudo dnf install <sysdeps.txt
chmod +x scripts/system/setup.sh 
scripts/system/./setup.sh
deactivate 
exit
source /var/home/iaacornus/Development/sayu/venv/bin/activate
clear
deactivate 
toolbox enter
dev-env 
ostree remote refs fedora
rpm-ostree status
sudo ostree admin pin --unpin 1
rpm-ostree --help
rpm-ostree override --help
rpm-ostree install --help
rpm-ostree rebase fedora:fedora/37/x86_64/silverblue
rpm-ostree status
rpm-ostree uninstall rpmfusion-free-release-36-1.noarch
rpm-ostree override reset qgnomeplatform
rpm-ostree install --idempotent qgnomeplatform
rpm-ostree override reset qgnomeplatform-qt5-0.9.0-2.fc36.x86_64
rpm-ostree update     --uninstall rpmfusion-free-release-36-1.noarch     --uninstall rpmfusion-nonfree-release-36-1.noarch     --install rpmfusion-free-release     --install rpmfusion-nonfree-release
rpm-ostree update     --install rpmfusion-free-release \
rpm-ostree uninstall qgnomeplatform
systemctl reboot
rpm-ostree rebase fedora:fedora/37/x86_64/silverblue
systemctl reboot
rpm-ostree rebase fedora:fedora/37/x86_64/silverblue
systemctl reboot
rpm-ostree upgrade
rpm-ostree status
sudo ostree admin pin 0
clear
rpm-ostree status
sudo ostree admin cleanup -v
rpm-ostree cleanup -bpmr
clear
rpm-ostree status
toolbox-upgrade 
exit
toolbox enter dev-tools 
flatpak update
flatpak uninstall --unused
clear
flatpak --help
flatpak repair
git clone https://github.com/rafaelmardojai/firefox-gnome-theme && cd firefox-gnome-theme
./scripts/auto-install.sh
toolbox-upgrade 
exit
toolbox enter
toolbox --help
toolbox-list
toolbox list
toolbox enter fedora-toolbox-36
cp ~/Pictures/f37-01-night.webp ~/Development/workstation_setup/main_ws/wallpapers/
ls
cd Development/workstation_setup/
clear
git st
git add main_ws/wallpapers/
git st
git cm -m "update wallpaper"
git diff
git cm -am "remove yaru purple"
git log
git sl
clear
nano silverblue_setup.md 
if [ ! -d hello ]; then mkdir -p hello; echo "GTK_THEME=Yaru-purple" >> $HOME/hello/gtk_theme.conf; echo "GTK_THEME=Yaru-purple"
if [ ! -d hello ]; then mkdir -p hello; echo "GTK_THEME=Yaru-purple" >> $HOME/hello/gtk_theme.conf; echo "GTK_THEME=Yaru-purple"; fi
ls
cd hello/
ls
cat gtk_theme.conf 
cd ..
rm -r hello/
clear
ls
toolbox-upgrade 
exit
toolbox enter fedora-toolbox-35 
cd .config/gtk-4.0/
ls
cd
repo-clean 
exit
repo-clean 
exit
repo-clean 
exit
sudo dnf search java
clear
exit
backup
sudo dnf install java
exit
sudo dnf search java
exit
cd Development/workstation_setup/
git st
git cm -am "update tutorial"
git ph
dev-env 
toolbox enter fedora-toolbox-35 
toolbox enter
toolbox enter fedora-toolbox-36
dev-env 
repo-clean 
dev-env 
repo-clean 
dev-env 
toolbox enter
exit
cd .sys/
ls
cd
cat .bashrc
cat .bashrc
clear
sudo dnf install java-latest*
exit
dev-env 
repo-clean 
exit
nano .bashrc
cd Development/workstation_setup/
dev-env 
repo-clean 
toolbox enter dev-tools 
repo-clean 
source ~/.bashrc
repo-clean 
repo-clean --no-blob-protection -b '10M'
repo-clean --no-blob-protection -b '5M'
git reflog expire --expire=now --all && git gc --prune=now --aggressive
git ph --force
clean-up 
cp ~/.config/Code/User/settings.json ~/Development/workstation_setup/main_ws/config/code/
cp .bashrc ~/Development/workstation_setup/main_ws/sys/
cd Development/workstation_setup/
git st
git add .
git cm -m "update"
git add .
git ac --no-edit
git ph
rpm-ostree upgrade
rpm-ostree status
fwupdmgr refresh 
fwupdmgr --help
fwupdmgr upgrade --help
fwupdmgr upgrade --sign
fwupdmgr upgrade
fwupdmgr update
sudo fwupdmgr update
fwupdmgr get-devices
sudo fwupdmgr update
fwupdmgr refresh
fwupdmgr get-updates
clear
poweroff
systemctl reboot
vi
rpm-ostree override --help
rpm-ostree uninstall --help
rpm-ostree override remove firefox
rpm-ostree override remove --help
rpm-ostree override remove firefox firefox-langpacks
systemctl reboot
flatpak search firefox
flatpak install flathub org.mozilla.firefox
git clone https://github.com/rafaelmardojai/firefox-gnome-theme && cd firefox-gnome-theme
./scripts/auto-install.sh
clear
cd
rm -rf firefox-gnome-theme/
clear
rpm-ostree status
sudo ostree admin pin --unpin 1
sudo ostree admin pin 0
sudo ostree admin cleanup -v
rpm-ostree cleanup -bpmr
clear
flatpak repair
poweroff
systemctl reboot
bat soe_2_2.c
bat soe_2.c
bat soe.c
cat soe.c
cat soe_2.c
cat soe2.c
cat soe.c
sudo dnf install bat
bat
exit
bat
exit
cd Development/
ls
cd experimental/
ls
bat soe_2_2.c
toolbox enter fedora-toolbox-36
dev-env 
nano soe.c
cd Development/
cd experimental/
nano soe.c
gcc soe.c soe
nano soe.c
cd 
cd Downloads/
ls
nano CamScanner_11-18-2022_20.33
nano CamScanner_11-18-2022_20.331.pdf 
source venv/bin/activate
clear
pip install pypdf2
pip3 install pypdf2
pip install pypdf2
deactivate 
pi
pip
source venv/bin/activate
pip
python -m pip
sudo dnf install python3-pip
pip
deactivate 
exit
source venv/bin/activate
pip
deactivate 
exit
cd Downloads/
ls
nano CamScanner_11-18-2022_20.331.pdf 
nano file2.pdf 
nano assignment.pdf 
cd Downloads/
nano assignment.pdf 
cd Downloads/
nano assignment.pdf 
source venv/bin/activate
pip
pip install pypdf2
cd
cd Downloads/
ls
nano corrupt.py
python corrupt.py 
nano corrupt.py
python corrupt.py 
deactivate 
exit
cd Downloads/
ls
python -m venv venv
dev-env 
cd
cd Development/sayu/
dev-env 
cd Development/
ls
cd iota-2
ls
rm -rf venv/
cd ..
ls
tree | grep venv
clear
cd Development/
ls
cd archives/
ls
cd AutoPWN-Suite/
ls
cd ..
ls
cd capstone/
ls
cd archive/
ls
cd ../..
ls
cd comp
cd compiler/
ls
cd ..
ls
cd comp
cd compyy/
ls
cd ..
ls
cd CopypastaBanner/
ls
cd ..
ls
cd downloader/
ls
cd ..
ls
cd inst/
ls
cd ..
cd miyuki/
ls
rm -rf venv/
cd ..
ls
cd RedditVideoMakerBot/
ls
rm -rf venv/
cd ..
ls
cd sakii/
ls
cd ..
ls
cd sys/
ls
cd ..
cd wikiterm/
ls
cd ../..
ls
cd ai/
ls
cd ca
cd ..
cd capstone/
ls
rm -rf venv/
cd ..
ls
cd chatbot/
ls
cd ..
ls
cd CopypastaBanner/
ls
cd ..
ls
cdc DNAnalyzer/
cd DNAnalyzer/
ls
cd ..
ls
cd scpterm/
ls
rm -rf venv/
cd ..
cd sayu/
ls
rm -rf venv/
cd ..
ls
cd miyuki/
ls
rm -rf venv/
cd ..
rm -rf rubygems/
cd simtex
ls
rm -rf venv/
cd ..
eval --help
eval 3-1
expr 3-1
expr "3-1"
bc
cd Development/sayu/
ls
git st
git add src/utils/log/logger.py 
git st
git cm -m "rename to logger"
git add src/utils/log/clogger.py 
git ac --no-edit
git cm -am "update imports"
git st
git cm -am "reformat commands.json"
git st
git cm -am "change fail message"
git st
git cm -am "remove unnecessary item in array"
git ph
clear
cd Templates/
ls
cat latex_manscrpt_ppr_main_template.tex 
cd Downloads/
ls
cd Development/sayu/
git ph
clear
cd Development/simtex
clear
git remote set-url origin https://github.com/simtex-dev/engine
clear
git ph
git ph origin devel
clear
ls
rm Pipfile 
ls
git st
git cm -am "remove unused pipfile"
clear
git ph origin devel
git bh branch-switch
cler
clear
git st
git ch branch-switch
clear
git ph
git ph --all
clear
cd
cd Development/
mkdir simtex-dev
mv simtex simtex-dev/engine
clear
cd simtex-dev
ls
cd engine/
ls
cd ..
ls
mkdir simtex
cd simtex/
ls
cd ..
mv simtex/ simtex-docs
ls
cd simtex-docs/
clear
ls
cd ..
cp -r engine/ simtex-docs/
cd simtex-docs/m
ls
cd simtex-docs/
ls
cp engine/ .
cp -r engine/ .
cp -r engine/* .
ls
rm engine/
ls
rm -rf engine/
clear
ls
git remote set-url https://github.com/simtex-dev/simtex-docs
ls
git remote set-url origin https://github.com/simtex-dev/engine
clear
ls
rm -rf .git
clear
git st
git init
clear
git st
git remote set-url https://github.com/simtex-dev/simtex-docs
git remote add origin https://github.com/simtex-dev/simtex-docs.git
clear
git st
git bh -M devel
clear
git st
git add .
git st
clear
cd ..
rm -rf simtex-docs/
mkdir simtex-docs
clear
cp -r engine/* simtex-docs/
clear
cd simtex-docs/
ls
git remote add origin https://github.com/simtex-dev/simtex-docs.git
git init
git st
cd ..
cd engine/
ls
cd ..
cd simtex-docs/
ls
git st
git add .
git bh -M devel
git st
git cm -m "migrate the repository from engine"
clear
git st
git ph
git ph origin devel
git st
git ph devel
git ph --all
git remote add origin https://github.com/simtex-dev/simtex-docs.git
git st
git ph origin devel
clear
cat .gitignore
clear
cd ..
cp engine/.gitignore simtex-docs/
cd simtex-docs/
ls
git s
git st
git add .gitignore 
git cm -m "include gitignore"
git ph
git ph origin devel
clear
rm -rf dist/
ls
git st
git cm -am "remove dist"
clear
git ph
git ph origin devel
clear
repo-clean 
repo-clean --delete-folders dist/
repo-clean --delete-folders dist
git reflog expire --expire=now --all && git gc --prune=now --aggressive
clear
git ph origin devel
git ph origin devel --force
rm -rf build
rm -rf simtex.egg-info/
git st
git cm -am "clean up repo"
repo-clean --delete-folders dist
repo-clean --delete-folders simtex.egg-info build
repo-clean --delete-folders simtex.egg-info --delete-folders build
repo-clean --delete-folders "simtex.egg-info"
repo-clean --delete-folders "build"
git reflog expire --expire=now --all && git gc --prune=now --aggressive
git ph origin devel --force
rm -rf __pycache__/
repo-clean --delete-folders "__pycache__"
git reflog expire --expire=now --all && git gc --prune=now --aggressive
git ph origin devel --force
git st
git cm -am "remove __pycache__"
repo-clean --delete-folders "__pycache__"
git reflog expire --expire=now --all && git gc --prune=now --aggressive
git ph origin devel --force
rm -rf *__pycache__*
git st
rm -r __pycache__
rm -r "__pycache__"
ls
cd src/
ls
cd ..
cd Downloads/
ls
rm -rf ISO/
rm -rf temp/
cd Documents/
ls
project-init life_models
cd Documents/
ls
cd academia/
ls
systemctl reboot
free -h
watch -n 3free -h
watch -n 3 free -h
free -h
cd Templates/
ls
cd Templates/
ls
cat latex_presentation_main_template.tex 
free -h
flatpak list
free -h
sudo flatpak override --filesystem=$HOME/Documents
sudo flatpak org.texstudio.TeXstudio override --filesystem=$HOME/Documents
sudo flatpak override org.texstudio.TeXstudio --filesystem=$HOME/Documents
sudo flatpak override org.texstudio.TeXstudio --filesystem=xdg-documents
sudo flatpak override org.texstudio.TeXstudio --filesystem=home
free -h
htop
top
clear
uptime
sudo -E hw-probe -all -upload
cd Downloads/silverblue/
ls
rm -rf *
wget https://download.fedoraproject.org/pub/fedora/linux/releases/37/Silverblue/x86_64/iso/Fedora-Silverblue-ostree-x86_64-37-1.7.iso
rm -rf *
systemctl reboot
free -h
cd Downloads/silverblue/
rm -rf *
lsblk
clear
lsblk
cd Documents/
ls
cd archives/
ls
cd astrobio_series/
ls
cd stellar_dataset/
ls
rm -rf *
cd
cdd Downloads/silverblue/
cd Downloads/silverblue/
rm -rf *
clear
rm -rf *
ls -lah
clear
ls -lah
rm -rf *
ls -lah
sha256sum -c *CHECKSUM
systemctl reboot
cd workstation_setup/
ls
cd main_ws/
ls
cd config/
ls
cd ..
ls
cd sys/
ls
cd ..
ls
cd sys/
ls -a
cp .bash* ~/
cd
nano .bash_profile 
clear
mkdir .sys
clear
nano .bashrc
clear
ls /sys/class/
ls /sys/class/leds/
ls /sys/class/leds/asus\:\:kbd_backlight/
ls /sys/class/leds/asus\:\:kbd_backlight/brightness
cat /sys/class/leds/asus\:\:kbd_backlight/brightness
echo 0 > /sys/class/leds/asus\:\:kbd_backlight/brightness
brightnessctl --help
rpm-ostree install brightnessctl
clear
systemctl reboot
dbus --help
brightnessctl --device='tpacpi::kbd_backlight' info
brightnessctl --device='asus::kbd_backlight' info
brightnessctl --device='asus::kbd_backlight' set 3
brightnessctl --device='asus::kbd_backlight' set 2
brightnessctl --device='asus::kbd_backlight' set 0
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
brightnessctl --help
brightnessctl s 0
rpm-ostree uninstall brightnessctl
cd workstation_setup/
ls
cd main_ws/sys/
ls
cat gitconfig 
ls
cat hosts 
cat nanorc 
ls
ls -a
cd ..
ls
git cl https://github.com/rafaelmardojai/firefox-gnome-theme
cd firefox-gnome-theme/
ls
./scripts/auto-install.sh
sudo nano /etc/gitconfig
clear
nano /etc/hosts 
sudo nano /etc/hosts 
clear
sudo nano /etc/nanorc 
clear
lspci | grep finger
lspci
dmidecode
sudo dmidecode
sudo systemctl stop NetworkManager-wait-online.service && sudo systemctl disable NetworkManager-wait-online.service && sudo systemctl mask NetworkManager-wait-online.service
clear
cat /etc/default/grub 
sudo nano /etc/default/grub 
sudo nano /etc/nanorc
sudo cat workstation_setup/main_ws/sys/nanorc >> /etc/nanorc 
cat workstation_setup/main_ws/sys/nanorc | sudo tee -a /etc/nanorc
nano /etc/nanorc
clear
cat /etc/default/grub 
lscpi
lspci
lsusb
rpm -qa | grep tlp
uname
uname -r
cat /etc/os-release 
lshw
hwinfo --short
inxi -Fxz
lscpu
fdisk -l
ifconfig -a
ip link show
dmidecode -t bios
cd workstation_setup/
ls
rpm-ostree install intel-undervolt yaru-theme
cd Development/workstation_setup
git st
git add .
cd
nano .gitconfig
nano .git-credentials
cd Development/workstation_setup
clear
git st
git cm -am "changes"
git cm -m "changes"
cd
nano .gitconfig
gpg --full-generate-key
gpg --list-secret-keys --keyid-format=long
gpg --armor --export 61B18B135C89C113
nano .gitconfig
clear
cd Development/workstation_setup
git cm -m "changes"
clear
git ph
flatpak install flathub org.gnome.Music
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.gnome.Music
flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak --help
flatpak remote-delete flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-delete flathub 
flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.gnome.Music
flatpak install flathub org.videolan.VLC
flatpak install flathub org.libreoffice.LibreOffice
flatpak install flathub org.gimp.GIMP
flatpak install flathub org.kde.okular
flatpak install flathub org.kde.kdenlive
flatpak install flathub org.zotero.Zotero
flatpak install flathub org.texstudio.TeXstudio
clear
flatpak install flathub com.google.Chrome
systemctl reboot
ls /sys/class/power_supply/BAT0/
cat /sys/class/power_supply/BAT0/status 
cat /sys/class/power_supply/BAT0/charge_control_end_threshold 
sudo nano /sys/class/power_supply/BAT0/charge_control_end_threshold
echo 80 > /sys/class/power_supply/BAT0/charge_control_end_threshold
sudo nano /etc/systemd/system/battery-charge-threshold.service
cp /etc/systemd/system/battery-charge-threshold.service Development/workstation_setup/main_ws/sys/
cd Development/workstation_setup
git st
git add .
git cm -m "battery threshold setter"
clear
cd
sudo systemctl enable battery-charge-threshold.service 
clear
systemctl status battery-charge-threshold.service 
clear
cat /sys/class/power_supply/BAT0/status 
clear
intel-undervolt read
sudo intel-undervolt read
sudo nano /etc/intel-undervolt.conf
cp /etc/intel-undervolt.conf Development/workstation_setup/main_ws/sys/
cd Development/workstation_setup
git st
git add .
git cm -m "cpu undervolt"
clear
intel-undervolt apply
sudo intel-undervolt apply
sudo rm /etc/intel-undervolt.conf
clear
cd
rpm-ostree remove intel-undervolt
systemctl reboot
systemctl status battery-charge-threshold.service 
cat /sys/class/power_supply/BAT0/status 
cat /sys/class/power_supply/BAT0/charge_control_end_threshold 
clear
poweroff
flatpak repair
rpm-ostree status
sudo ostree admin --help
sudo ostree admin pin 0
rpm-ostree status
clear
rpm-ostree cleanup --help
rpm-ostree cleanup -bpmr
clear
sudo ostree admin --help
sudo ostree admin cleanup --help
sudo ostree admin cleanup -v
clear
rpm-ostree status
clear
rpm-ostree upgrade --check
clear
rpm-ostree install code
systemctl reboot
git cl https://github.com/rafaelmardojai/firefox-gnome-theme
rm -rf firefox-gnome-theme/
git clone https://github.com/iaacornus/workstation_setup
cd workstation_setup/main_ws/config/
ls
cd code/
ls
cat extensions.md 
cp keybindings.json ~/.config/Code/User/
cp settings.json ~/.config/Code/User/
cd .config/Code/
ls
cd User/
ls
cp ~/.config/Code/User/keybindings.json ~/Development/workstation_setup/main_ws/config/code/
cd Development/workstation_setup
git st
git cm -am "remove numpad keybindings"
git ph
rm -rf "My Library"
rm -rf workstation_setup/
systemctl shutdown
systemctl poweroff
cd Downloads/
ls
rm -rf iso/ silverblue/
clear
journalctl -b | grep elan
journalctl | grep elan
clear
fwupdmgr --help
sudo fwupdmgr refresh
sudo fwupdmgr refresh --force
sudo fwupdmgr update
clear
rpm-ostree status
sudo ostree admin pin --unpin 1
sudo ostree admin pin 0
sudo ostree admin cleanup -v
rpm-ostree cleanup -bpmr
rpm-ostree upgrade --check
clear
flatpak install flathub com.obsproject.Studio
sudo flatpak override --system org.texstudio.TeXstudio --filesystem=home 
clear
flatpak install flathub com.jgraph.drawio.desktop
clear
flatpak update
systemctl reboot
cat /sys/class/power_supply/BAT0/status 
cat /sys/class/power_supply/BAT0/charge_control_end_threshold 
poweroff
lspci | grep VGA
rpm -qa | grep intel
rpm -qa | grep mesa
rpm-ostree status
clear
nano .bashrc 
clear
cp ~/.bashrc ~/Development/workstation_setup/main_ws/sys/
clear
ls
ls -l
cd .config/
ls
nano mimeapps.list 
cp mimeapps.list ~/Development/workstation_setup/main_ws/config/
cd
cat .bashrc 
nano .bashrc 
cp ~/.config/Code/User/keybindings.json ~/Development/workstation_setup/main_ws/config/code/
cp ~/.config/Code/User/settings.json ~/Development/workstation_setup/main_ws/config/code/
cd Development/workstation_setup
git st
git cm -am "update settings"
cd main_ws/
ks
ls
cd config/
ls
git st
git cm -am "remove aliases"
clear
git st
ls
rm -rf avogadro/ chrome/ drawio/ 
cd environment.d/
ls
cat gtk_theme.conf 
cd ..
rm -rf environment.d/
ls
rm -rf freecad/ gnome-terminal.config.md gnome_texteditor/ gtk-*
ls
rm -rf jasp/ kalzium/ labplot2/
cat mimeapps.list 
clear
git st
git add mimeapps.list 
git cm -m "cleanup mimeapps"
git st
ls
rm -rf okular/ octave/ pymol/ texstudio/ todoist/ ulauncher/
git st
ls
cat README.md 
rm -rf README.md vlc/
git st
git cm -am "remove nonsense config"
clear
git st
cd ..
ls
git st
git cm -am "remove unnecessary and duplicates"
git st
git add .
git ac --no-edit
git st
git add .
git cm -m "remove undervolt config; unused"
git st
git add .
git cm -m "remove extra wallpapers"
clear
git ph
flatpak install flathub org.freedesktop.Platform.ffmpeg-full
clear
flaptak update
flatpak update
clear
flatpak repair
poweroff
free -h
poweroff
cd Development/workstation_setup
cd main_ws/sys/
ls
nano battery-charge-threshold.service 
clear
cd
cd Development/workstation_setup
git st
git cm -am "change battery threshold"
cd
sudo nano /etc/fstab
ls /etc/systemd/
sudo nano /etc/systemd/system/battery-charge-threshold.service 
clear
sudo systemctl daemon-reload 
clear
sudo nano /etc/systemd/system/powertop.service
cat /etc/systemd/system/battery-charge-threshold.service 
sudo nano /etc/systemd/system/powertop.service
which gnome-tweals
which gnome-tweaks
which papirus-icon-theme
which code
sudo systemctl enable powertop.service 
rpm-ostree status 
rpm-ostree --help
rpm-ostree cancel
sudo systemctl restart rpm-ostreed.service
rpm-ostree install powertop
systemctl reboot
sudo systemctl stop powertop.service
sudo systemctl disable powertop.service
clear
sudo systemctl daemon-reload 
sudo powertop --help
sudo powertop --calibrate 
clear
sudo rm /etc/systemd/system/powertop.service 
rpm-ostree uninstall powertop
systemctl reboot
sudo systemctl restart rpm-ostreed.service
rpm -qa | grep power
rpm-ostree status 
sudo ostree admin pin --unpin 2
sudo ostree admin pin 0
rpm-ostree status 
sudo ostree admin cleanup -v
rpm-ostree cleanup -bpmr
rpm-ostree update
systemctl reboot
sudo systemctl restart rpm-ostreed.service
rpm-ostree status 
sudo ostree admin pin --unpin 1
sudo ostree admin pin 0
clear
sudo ostree admin cleanup -v
rpm-ostree cleanup -bpmr
clear
rpm-ostree update
systemctl reboot
rpm-ostree status 
sudo ostree admin pin --unpin 1
sudo ostree admin pin 0
rpm-ostree status 
sudo ostree admin cleanup -v
rpm-ostree cleanup -bpmr
flatpak update
flatpak repair
systemctl reboot
rpm-ostree update
rpm-ostree status 
poweroff
cd Development/workstation_setup
git st
git cm -am "texstudio conf"
git add .
git cm -am "texstudio conf"
git ph
free -h
rpm -qa | thermald
rpm -qa | grep thermald
poweroff
tree
tree > ~/ref
cd
cd Documents/
tree > ~/main
cd
diff --help
diff -y ref main 
clear
diff --help
diff ref main 
ls
cd ref/
ls
cd ..
rm -rf ncbi/
tree > ~/ref
cd
diff ref main 
tree 
tree
cd
diff ref main 
cd Documents/
ls
rm -rf ncbi/
tree > ~/main
cd
diff ref main 
tree > ~/main
tree > ~/ref
cd
diff ref main 
cd Documents/
tree > ~/main
cd
diff ref main 
cd USB
cd Documents/
tree > ~/main
cd
diff ref main 
cd ../..
tree > ~/ref
rsync -r -u . /var/home/iaacornus/Documents/
tree > ~/ref
rsync -r -u ./* /var/home/iaacornus/Documents/
diff -r . ~/Documents/
clear
rsync -r -u ./* /var/home/iaacornus/Documents/
rsync --help
clear
cd ..
rm -rf *
rpm-ostree update
flatpak update
poweroff
free -h
cat .bashrc
cat .sys/utils.sh 
cd Documents/
ls
tex-gen math_model_photosynthesis
ls
rm math_model_photosynthesis.tex 
clear
cd
nano .bashrc
source ~/.bashrc
clear
cd Documents/
project-init math_models_photosynthesis
cd math_models_photosynthesis/
ls
cd manscrpt/
ls
cd Development/sayu/
ls
git st
git cm -m "update for whatever reason"
git ph
sudo dnf update
clear
sudo dnf install gcc gcc-c++
sudo dnf groupinstall "Development Tools"
clear
exit
toolbox create
toolbox enter
rpm-ostree install git
clear
cp ~/.bashrc ~/Development/workstation_setup/main_ws/sys/
cd Development/workstation_setup
git st
git cm -am "add project-init alias"
clear
systemctl reboot
rpm-ostree status 
sudo ostree admin pin --unpin 2
sudo ostree admin pin 0
clear
rpm-ostree status 
clear
sudo ostree admin cleanup -v
rpm-ostree cleanup -bpmr
clear
rpm-ostree update
poweroff
sudo nano /etc/systemd/system/battery-charge-threshold.service 
clear
cd
cd Development/workstation_setup
cd main_ws/sys/
ls
sudo nano battery-charge-threshold.service 
cd
cd Development/workstation_setup
git st
git cm -am "set battery threshold back to 80%"
git ph
sudo systemctl daemon-reload 
poweroff
cd Documents/
tree
free -h
cd Development/workstation_setup
ls
cd main_ws/
ls
flatpak list
flatpak uninstall --system --delete-data org.gnome.Music
flatpak install flathub org.gnome.Rhythmbox3
clear
cd Development/
git cl https://gitlab.gnome.org/iaacornus/rhythmbox
clear
git bh gtk4-port
cd rhythmbox/
git bh gtk4-port
clear
git ch gtk4-port
clear
git ph
git ph origin gtk4-port
git config --global credential.helper store
clear
flatpak repair
rpm-ostree install ffmpeg gstreamer1-plugin-libav gstreamer1-plugins-bad-free-extras gstreamer1-plugins-bad-freeworld gstreamer1-plugins-ugly gstreamer1-vaapi
systemctl reboot
rpm-ostree status 
sudo ostree admin pin --unpin 2
sudo ostree admin pin 0
rpm-ostree status 
rpm-ostree cleanup -bpmr
sudo ostree admin cleanup -v
clear
rpm-ostree status 
poweroff
free -h
cd Development/workstation_setup
git add .
git cm "new default wallpaper"
git cm -m "new default wallpaper"
git ph
poweroff
rpm-ostree status 
clear
rpm-ostree update
flatpak update
poweroff
notify-send "Battery threshold: 80% reached."
notify-send "Battery threshold: 80% reached." "Unplug the charger."
acpi -b | grep -P -o '[0-9]+(?=%)'
 | grep -w 'state|percentage' | awk '{print $2}'

upower -i /org/freedesktop/UPower/devices/battery_BAT0
upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep 'percentage:'
upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep 'percentage:' | awk '{ print $2 }' | sed 's/%//')
upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep 'percentage:' | awk '{ print $2 }' | sed 's/%//'
systemctl list-unit
systemctl list-units
ls /etc/xdg/autostart/
ls /etc/xdg/autostart/
ls /etc/xdg/autostart/ | grep gnome
cat /etc/xdg/autostart/org.gnome.Software.desktop 
sudo rm /etc/xdg/autostart/org.gnome.Software.desktop 
cat /etc/systemd/system/battery-charge-threshold.service 
history | grep rpm
rpm-ostree status
cd Development/sayu/
ls
cd scripts/
ls
cd system/
ls
cat setup.sh 
upower -i /org/freedesktop/UPower/devices/line_power_AC0
upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep 'state:' | awk '{ print $2 }' | sed 's/%//'
upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep 'percentage:' | awk '{ print $2 }' | sed 's/%//'
cat /etc/systemd/system/battery-charge-threshold.service 
sudo nano /etc/systemd/system/battery-charge-threshold.service 
clear
sudo cp /etc/systemd/system/battery-charge-threshold.service ~/Development/workstation_setup/main_ws/sys/
cd Development/workstation_setup
git st
git cm -am "used /usr/bin/env bash instead of /bin/bash"
clear
sudo systemctl daemon-reload 
cd .sys/
ls
nano battery-threshold.sh
nano battery-threshold.sh 
chmod +x battery-threshold.sh 
./battery-threshold.sh 
clear
nano battery-threshold.sh 
nano .bashrc
nano battery-threshold.sh 
code battery-threshold.sh 
./battery-threshold.sh 
.sys
cd .sys
nano battery-threshold.sh 
cd .config/systemd/user/
ls
nano battery-notify.timer
systemctl --user start battery-notify.service 
ls
systemctl --user start battery-notify.timer
nano battery-notify.timer
systemctl --user start battery-notify.timer
systemctl --user status battery-notify.timer
nano battery-notify.timer
systemctl --user status battery-notify.timer
systemctl --user start battery-notify.timer
clear
sudo nano /etc/systemd/system/battery-notify.service
sudo rm /etc/systemd/system/battery-notify.service
clear
mkdir ~/.config/systemd/user
mkdir -p ~/.config/systemd/user
clear
cd ~/.config/systemd/user/
ls
nano battery-notify.service
nano battery-notify.service'
nano battery-notify.service
systemctl --user daemon-reload
systemctl --user start battery-notify.service 
nano battery-notify.service
systemctl --user start battery-notify.service 
systemctl --user daemon-reload
cd .sys/
./battery-threshold.sh 
/usr/bin/env bash battery-threshold.sh 
cd .sys/
/usr/bin/env bash battery-threshold.sh 
 
ls
/usr/bin/env bash battery-threshold.sh 
nano battery-threshold.sh 
/usr/bin/env bash battery-threshold.sh 
nano battery-threshold.sh 
which yaru-theme
ls /usr/share/sounds/
ls /usr/share/sounds/Yaru/
ls /usr/share/sounds/Yaru/stereo/
ls /usr/share/sounds/Yaru/stereo/bell.oga 
paplay /usr/share/sounds/Yaru/stereo/bell.oga 
paplay /usr/share/sounds/Yaru/stereo/complete.oga 
paplay /usr/share/sounds/Yaru/stereo/battery-low.oga 
paplay /usr/share/sounds/Yaru/stereo/complete.oga 
cd .sys/
nano battery-threshold.sh 
code battery-threshold.sh 
cd .sys/
nano battery-threshold.sh 
code battery-threshold.sh 
cd Development/
ls
git cl https://github.com/iaacornus/silverblue-postinstall_upgrade
cd silverblue-postinstall_upgrade/
clear
ls
mkdir scripts
cd scripts/
cd
mkdir services
cd .config/systemd/user/
ls
systemctl --user daemon-reload
clear
systemctl --user status battery-notify.timer
systemctl --user status battery-notify.service 
watch -n60 systemctl --user status battery-notify.service 
systemctl --user status battery-notify.service 
clear
systemctl --user status battery-notify.service 
systemctl --user staart battery-notify.service 
systemctl --user start battery-notify.service 
systemctl --user status battery-notify.service 
clear
cd
cd .sys/
nano battery-threshold.sh 
cd ~/.config/systemd/user/
ls
nano battery-notify.timer 
cd
nano .sys/battery-threshold.sh 
cd .sys/
code battery-threshold.sh 
cd
cp .sys/battery-threshold.sh ~/Development/workstation_setup/main_ws/utils/
cp ~/.config/systemd/user/* ~/Development/workstation_setup/main_ws/sys/
cp ~/.sys/battery-threshold.sh ~/Development/workstation_setup/main_ws/utils/
cd Development/silverblue-postinstall_upgrade/
git st
git add scripts/
git cm -m "script to check battery level"
git ac
clea
clear
git st
git add systemd/
git st
git ur systemd/battery-charge-threshold.service 
git st
git cm -am "systemd service to run the script in an interval"
git add .
git cm -m "for setting 80% as battery threshold in boot"
clear
cp ~/.sys/battery-threshold.sh ~/Development/workstation_setup/main_ws/utils/
cp ~/.config/systemd/user/* ~/Development/workstation_setup/main_ws/sys/
cd Development/workstation_setup
git st
git add main_ws/sys/battery-notify.*
git st
git cm -m "a systemd timer to trigger intervally"
git add .
git cm -m "check battery threshold"
cd Development/silverblue-postinstall_upgrade/
git st
git add systemd/
git cm -m "set every 15 minutes"
git add .
git cm -m "improve conditions for checking"
clear
git st
git ph
systemctl --user enable battery-notify.timer
systemctl --user enable battery-notify.service 
clear
cd Development/silverblue-postinstall_upgrade/
clear
git st
cd scripts/
nano post-install.sh
nano post-install.py
cd .sys/
ls
nano battery-threshold.sh 
./battery-threshold.sh 
nano battery-threshold.sh 
./battery-threshold.sh 
nano battery-threshold.sh 
./battery-threshold.sh 
nano battery-threshold.sh 
./battery-threshold.sh 
nano battery-threshold.sh 
./battery-threshold.sh 
nano battery-threshold.sh 
./battery-threshold.sh 
nano battery-threshold.sh 
code battery-threshold.sh 
./battery-threshold.sh 
code battery-threshold.sh 
./battery-threshold.sh 
code battery-threshold.sh 
./battery-threshold.sh 
cd
cp ~/.sys/battery-threshold.sh ~/Development/workstation_setup/main_ws/utils/
cp ~/.sys/battery-threshold.sh ~/Development/silverblue-postinstall_upgrade/scripts/
cd Development/silverblue-postinstall_upgrade/
git st
git cm -am "update conditions on breaking the loop"
clear
cd
cd Development/workstation_setup
git st
git cm -am "update conditions on breaking the loop"
clear
systemctl --user daemon-reload
clear
cd .sys/
ls
nano battery-threshold.sh 
clear
cd
cp ~/.sys/battery-threshold.sh ~/Development/silverblue-postinstall_upgrade/scripts/
cp ~/.sys/battery-threshold.sh ~/Development/workstation_setup/main_ws/utils/
cd Development/workstation_setup
git ac --no-edit
cd
cd Development/silverblue-postinstall_upgrade/
git ac --no-edit
git ph
git fetch
git ph
git pull https://github.com/iaacornus/silverblue-postinstall_upgrade main
git pull https://github.com/iaacornus/silverblue-postinstall_upgrade main --ff
git ph
clear
cd .config/systemd/user/
ls
nano battery-notify.service
clear
systemctl --user daemon-reload
cd
cp ~/.config/systemd/user/* ~/Development/workstation_setup/main_ws/sys/
cp -r ~/.config/systemd/user/* ~/Development/workstation_setup/main_ws/sys/
clear
git st
cd Development/workstation_setup
git st
rm -rf main_ws/sys/default.target.wants/ main_ws/sys/timers.target.wants/
git st
git add main_ws/sys/
git st
git cm -m "include restart=on-failure"
clear
cd Development/silverblue-postinstall_upgrade/
git st
git add 
git add .
git cm -am "update conditions on breaking the loop"
clear
git st
git cm -am "include restart=on-failure"
git ph
poweroff
systemctl list-dependencies --reverse network-online.target
cd .sys/
ls
nano battery-threshold.sh 
code battery-threshold.sh 
./battery-threshold.sh 
rm battery-threshold.sh 
clear
code .sys/battery-threshold.sh 
systemctl --user stop battery-notify.timer 
systemctl --user stop battery-notify.service
systemctl --user disable battery-notify.service
systemctl --user disable battery-notify.timer 
clear
rm -rf ~/.config/systemd/
clear
systemctl --user daemon-reload
flatpak list | grep intel
rpm-ostree status
cd Documents/
ls
file --mime-type book_list.odt 
gsettings set org.gnome.desktop.thumbnailers disable "['application/vnd.oasis.opendocument.text']"
rm -r ~/.cache/thumbnails/
cd
rm -r ~/.cache/thumbnails/*
gsetting --help
gsettings --help
gsettings get org.gnome.desktop.thumbnailers
nano disable-thumbnails.sh
chmod +x disable-thumbnails.sh 
./disable-thumbnails.sh 
clear
rm -r ~/.cache/thumbnails/*
mv disable-thumbnails.sh Development/workstation_setup/main_ws/utils/
cd Development/workstation_setup
git st
git dd main_ws/utils/disable-thumbnails.sh
git ddd main_ws/utils/disable-thumbnails.sh
git add main_ws/utils/disable-thumbnails.sh
git cm -m "disable thumbnails"
cd main_ws/
ls
cd sys/
ls
rm battery-notify.*
cd ..
ks
ls
cd utils/
ls
rm battery-threshold.sh 
cd ../..
git st
git cm -am "unused"
git ph
git pull https://github.com/iaacornus/workstation_setup main
git pull https://github.com/iaacornus/workstation_setup main -ff
git pull https://github.com/iaacornus/workstation_setup main --ff
git ph
rm -r ~/.cache/thumbnails/*
ls
cp Development/workstation_setup/main_ws/utils/disable-thumbnails.sh .
ls
nano disable-thumbnails.sh 
cat disable-thumbnails.sh 
gsettings set org.gnome.desktop.thumbnailers disable "['application/vnd.oasis.opendocument.text', 'application/vnd.amazon.ebook', 'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'application/vnd.ms-fontobject', 'image/vnd.microsoft.icon', 'application/vnd.oasis.opendocument.presentation', 'application/vnd.oasis.opendocument.spreadsheet', 'application/pdf', 'application/vnd.ms-powerpoint', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 'application/vnd.visio', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet']"
file --mime-type animal_eco.odp 
rm -r ~/.cache/thumbnails/*
rm -r ~/.cache/thumbnails
rm -rf ~/.cache/thumbnails
gsettings set org.gnome.desktop.thumbnailers disable "['application/vnd.oasis.opendocument.text', 'application/vnd.amazon.ebook', 'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'application/vnd.ms-fontobject', 'image/vnd.microsoft.icon', 'application/vnd.oasis.opendocument.presentation', 'application/vnd.oasis.opendocument.spreadsheet', 'application/pdf', 'application/vnd.ms-powerpoint', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 'application/vnd.visio', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet']"
nautilus -q
rm disable-thumbnails.sh 
poweroff
sudo systemctl unmask NetworkManager-wait-online.service 
claer
clear
rpm-ostree update --uninstall rpmfusion-free-release --uninstall rpmfusion-nonfree-release --install rpmfusion-free-release --install rpmfusion-nonfree-release

rpm-ostree install ffmpeg-libs
history | grep brightness
systemctl reboot
rpm-ostree status
sudo ostree admin pin --unpin 2
sudo ostree admin pin 0
sudo ostree admin cleanup -v
rpm-ostree cleanup -bpmr
poweroff
uname -m
du -sch .[!.]* *
df -h
cd Development/
git cl https://github.com/iaacornus/astrophotography-toolkit
cd astrophotography-toolkit/
cp ../simtex-dev/simtex-docs/LICENSE .
git st
git add .
git cm -m "license to gpl 3"
git st
touch README
nano README 
cd Development/sayu/
ls
cd src/
ls
cd ..
ls
cat /sys/class/power_supply/BAT0/charge_control_end_threshold
/usr/bin/env bash echo 80 > /sys/class/power_supply/BAT0/charge_control_end_threshold
systemctl status battery-charge-threshold.service 
sudo nano /etc/systemd/system/battery-charge-threshold.service 
sudo cp /etc/systemd/system/battery-charge-threshold.service ~/Development/workstation_setup/main_ws/sys/
cd Development/workstation_setup
git st
git cm -am "fix error"
clear
git ph
cd Development/astrophotography-toolkit/
git st
git add .
git cm -m "project description"
clear
touch REQUIREMENTS
git st
git add .
git cm -m "python dependencies"
git st
git cm -am "include setup section"
mkdir src
mkdir src/utils src/core 
touch src/utils/__init__.py
touch src/core/__init__.py
git st
git add .
git cm -m "initial project structure"
mkdir scripts
mkdir templates
touch templates/config.env.temp
git st
git add .
git cm -m "initial config template"
clear
mkdir config
touch config/at.conf
touch scripts/setup.sh
git st
git add .
git cm -m "initial files"
clear
git st
git ph
git st
git add .
git cm -m "use json and include basic config params"
git ph
cd Development/
systemctl reboot
sudo nano /etc/systemd/system/battery-charge-threshold.service 
sudo systemctl daemon-reload 
systemctl status battery-charge-threshold.service 
cat /sys/class/power_supply/BAT0/charge_control_end_threshold
systemctl status battery-charge-threshold.service 
clear
sudo cp /etc/systemd/system/battery-charge-threshold.service ~/Development/workstation_setup/main_ws/sys/
cd Development/workstation_setup
git st
git cm -am "revert to /bin/bash"
clear
git ph
poweroff
cat /sys/class/power_supply/BAT0/charge_control_end_threshold
lscpu
uptime
cd Development/capstone/
ls
cd src
ls
cat demo.py 
ls
cd utils/
ls
cat function.py 
cat /etc/gitconfig 
sudo nano /etc/gitconfig 
cd Development/astrophotography-toolkit/
git st
git add src/utils/dev/detect_cam.py 
clear
source venv/bin/activate
clear
pip install -r REQUIREMENTS 
pip install pip --update
exit
cd Development/astrophotography-toolkit/
git st
git add src/utils/
git st
git ur *
git ur src/utils/dev/*
clear
git st
source venv/bin/activate
pip
python -m pip
deactivate 
sudo dnf install python3-pip
source venv/bin/activate
pip
python -m pip
sudo dnf install python
sudo dnf install python3
deactivate 
rm -rf venv/
python -m venv venv
python3 -m venv venv
source venv/bin/activate
python3 -m pip
python3 -m pip install pip --update
python3 -m pip install pip --upgrade
pip
pip install -r REQUIREMENTS 
sudo dnf install python-devel
pip install -r REQUIREMENTS 
clear
deactivate 
exit
cd Development/astrophotography-toolkit/
git st
git cm -am "include window title"
git ch devel
git bh devel
git ch devel
git ph
git ph origin devel
git st
git add .
git cm -m "main file"
git st
git add .
git cm -m "interface subpackage initial commit"
git st
git add .
git cm -am "for devices"
git st
git add src/interface/cli
git s
git st
git add src/interface/cli.py 
git st
git cm -m "move cli.py to interface/cli"
git st
git add .
git cm -m "included documentation so no angry dev would eat my dog"
git st
git ph
git ph origin devel
ls
cat ../sayu/.gitignore >> .gitignore 
git st
git add .gitignore 
git st
git cm -m "gitignore"
python -m venv venv
toolbox enter
cd Development/astrophotography-toolkit/
git st
git add REQUIREMENTS 
git st
git cm -m "include textualize/rich"
git add BUILD_DEPS 
git st
git cm -m "system dependencies to build python dependencies"
poweroff
dmsetup --help
dmsetup table | grep workqueue
sudo dmsetup table | grep workqueue
clear
sudo cat /etc/crypttab 
lsblk
dmsetup --help
lsblk -p
sudo cryptsetup luksOpen /dev/mapper/luks-e88105e1-690f-423e-a168-a9f9a2e613e9 luks-e88105e1-690f-423e-a168-a9f9a2e613e9
cryptsetup isLuks /dev/mapper/luks-e88105e1-690f-423e-a168-a9f9a2e613e9 
sudo cryptsetup isLuks /dev/mapper/luks-e88105e1-690f-423e-a168-a9f9a2e613e9 
sudo cryptsetup isLuks /dev/mapper/nvme0n1p3
sudo cryptsetup isLuks /dev/nvme0n1p3
sudo cryptsetup luksUUID /dev/nvme0n1p3
sudo cryptsetup luksOpen /dev/nvme0n1p3 luks-e88105e1-690f-423e-a168-a9f9a2e613e9
sudo cryptsetup luksOpen /dev/nvme0n1p3 e88105e1-690f-423e-a168-a9f9a2e613e9
dmsetup info e88105e1-690f-423e-a168-a9f9a2e613e9
sudo dmsetup info e88105e1-690f-423e-a168-a9f9a2e613e9
sudo dmsetup info luks-e88105e1-690f-423e-a168-a9f9a2e613e9
crypttab --help
cryptsetup --help
cat /etc/crypttab 
sudo cat /etc/crypttab 
dmsetup table
sudo nano /etc/crypttab 
sudo cryptsetup --perf-no_read_workqueue --perf-no_write_workqueue --persistent refresh luks-e88105e1-690f-423e-a168-a9f9a2e613e9
systemctl reboot
cd Development/silverblue-postinstall_upgrade/
git pull https://github.com/iaacornus/silverblue-postinstall_upgrade main --ff
flatpak install flathub com.getmailspring.Mailspring
flatpak update
flatpak uninstall --system --unused --delete-data
clear
poweroff
python
journalctl -k | grep usb
systemctl status usbguard.service
ls /sys/bus/usb/devices/
ls /sys/bus/usb/devices/usb1/
less /sys/bus/usb/devices/usb1/authorized_default 
less /sys/bus/usb/devices/usb2/authorized_default 
ls /dev/spi*
less /sys/bus/usb/devices/
lsusb
lspci
rpm-ostree install libfprint-devel
poweroff
lsusb
sudo fwupdmgr refresh 
sudo fwupdmgr get-updates
sudo fwupdmgr refresh 
sudo fwupdmgr refresh --force
sudo fwupdmgr get-updates
fwupdmgr --help
sudo fwupdmgr update 
sudo fwupdmgr get-updates --help
sudo fwupdmgr get-updates --force
clear
systemctl reboot
rpm-ostree status
rpm-ostree help
lsusb
lspci
fprintd-enroll 
rpm-ostree uninstall libfprint-devel
clear
systemctl reboot
sudo ostree admin pin --unpin 2
sudo ostree admin pin 0
rpm-ostree status
rpm-ostree cleanup -bpmr
sudo ostree admin cleanup -v
clear
rpm-ostree update
poweroff
free -h
flatpak update
rpm-ostree update
poweroff
git clone https://github.com/rafaelmardojai/firefox-gnome-theme && cd firefox-gnome-theme
./scripts/auto-install.sh
systemctl reboot
sudo fwupdmgr refresh 
sudo fwupdmgr get-updates
sudo fwupdmgr update 
flatpak update
rpm-ostree update
poweroff
cd Development/
ls
git cl https://github.com/iaacornus/fmrfetch
cd fmrfetch/
ls
cat ../sayu/LICENSE >> LICENSE
ls
git st
git add .
git st
git cm -m "license to gpl 3"
git add
touch README.md
mkdir src
ls
cat ../astrophotography-toolkit/.gitignore >> .gitignore
git st
git add .gitignore 
git cm -m "gitignore"
git add README.md 
git st
git cm -m "readme"
touch src/main.py
git add src/
git cm -m "initial commit"
git st
git ph
cd Development/
cat sayu/requirements.txt 
cd sayu/
ls
cat check.sh 
ls
rich
python
pip
source venv/bin/activate
clear
pip install -r REQUIREMENTS 
sudo dnf install python3-pip
pip3
python3 -m pip install pip --upgrade
pip install -r REQUIREMENTS 
python3 -m pip install -r REQUIREMENTS 
git st
pip install rich
python3 -m pip show rich
python3 -m pip uninstall rich 
clear
pip
deactivate 
exit
cd Development/fmrfetch/
source venv/bin/activate
clear
python3 -m pip uninstall pip 
deactivate 
exit
toolbox enter
source /var/home/iaacornus/Development/fmrfetch/venv/bin/activate
deactivate 
toolbox enter fedora-toolbox-35
cd venv/
ks
ls
cd bin/
ls
rm python
clear
python3.10
python3.10 -m venv venv
rm -rf venv/
python3.10 -m venv venv
clear
source /var/home/iaacornus/Development/fmrfetch/venv/bin/activate
clear
pip install rich
deactivate 
exit
cd Development/fmrfetch/
rm -rf venv/
clear
python -v
python --version
clear
python3.10 -m venv venv
rm -rf venv/
sudo dnf install python3.10
sudo dnf install python3
sudo dnf install python3-pip
python3.10
python -m venv venv
source /var/home/iaacornus/Development/fmrfetch/venv/bin/activate
pip install rich
pip show rich
pip uninstall rich
pip install pip -U
pip install rich
pip --help
python3.11 -m pip
deactivate 
rm -rf venv/
sudo dnf install python3.10-venv
dnf search venv
exit
cd Development/fmrfetch/
git st
git add .
git cm -m "initial work for cli"
clear
touch check.sh
git st
git add check.sh 
ls
chmod +x check.sh 
git st
git add check.sh 
git st
git cm -m "script for running mypy"
git add .
git cm -m "include mypy"
python3.10
toolbox enter fedora-toolbox-3
toolbox enter fedora-toolbox-35
clear
toolbox enter fedora-toolbox-35
clear
source venv/bin/activate
pip
sudo dnf install python-pip
sudo dnf install python
pip
pip3
pip
sudo dnf install python-pip
sudo dnf install pip3
clear
deactivate 
rm -rf venv/
python -m venv venv
source venv/bin/activate
pip
clear
pip install -r REQUIREMENTS 
pip install rich
pip show rich
deactivate 
exit
cd Development/ fmrfetch/
cd Development/fmrfetch/
git st
touch REQUIREMENTS
git st
git add .
git cm -m "python dependencies"
git st
git add .
git cm -m "update project description"
git ph
git bh devel
git ch devel
git ph
git ph origin devel
cat ../simtex-dev/simtex-docs/src/cli.py >> src/cli.py 
cat ../simtex-dev/simtex-docs/src/utils/logger.py >> src/utils/logger.py 
git st
git add src/utils/
git st
git ur src/utils/logger.py 
touch src/utils/__init__.py
git st
git add src/utils/__init__.py 
git cm -m "utils package"
git st
git add src/utils/logger.py 
git cm -m "logging utility using rich"
clear
gits t
git st
python -m venv venv
toolbox enter 
toolbox --help
toolbox create --help
toolbox create -d Fedora -r 35
toolbox enter fedora-toolbox-35
dnf search venv
python3.11 -m venv venv
source venv/bin/activate
clear
pip install rich
deactivate 
rm -rf venv/
python -m venv
python -m venv venv
source venv/bin/activate
pip
pip install pip -U
clear
pip isntall rich
pip install rich
pip show rich
python3.11 -m pip
cd venv/
ls
cd lib
ls
mv python3.10/ python3.11/
clear
pip install rich
deactivate 
exit
cd Development/fmrfetch/
clear
toolbox enter fedora-toolbox-35
clear
ls .local/
rpm-ostree update
flatpak update
poweroff
flatpak update
rpm-ostree update
poweroff
project-init resrch_1
echo $THEME_DIR
sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --env=GTK_THEME=Catppuccin-Latte-Standard-Sky-Light
mkdir -p $HOME/.config/gtk-4.0
cd .config/gtk-4.0/
ls
cd
ln -sf $HOME/.themes/Catppuccin-Latte-Standard-Sky-Light/gtk-4.0/assets $HOME/.config/gtk-4.0/assets
ln -sf $HOME/.themes/Catppuccin-Latte-Standard-Sky-Light/gtk-4.0/gtk.css $HOME/.config/gtk-4.0/gtk-4.0.css
ln -sf $HOME/.themes/Catppuccin-Latte-Standard-Sky-Light/gtk-4.0/gtk-dark.css $HOME/.config/gtk-4.0/gtk-dark.css
cd .config/gtk-4.0/
ls
nano settings.ini 
rm settings.ini 
cd .config/gtk-
cd .config/gtk-4.0/
ls
ln -sf $HOME/.themes/Catppuccin-Latte-Standard-Sky-Light/gtk-4.0/gtk.css $HOME/.config/gtk-4.0/gtk.css
dconf --help
git clone https://github.com/catppuccin/cursors.git
ln -sf $HOME/.themes/Catppuccin-Latte-Standard-Blue-Light/gtk-4.0/gtk.css $HOME/.config/gtk-4.0/gtk.css
ln -sf $HOME/.themes/Catppuccin-Latte-Standard-Blue-Light/gtk-4.0/gtk-dark.css $HOME/.config/gtk-4.0/gtk-dark.css
ln -sf $HOME/.themes/Catppuccin-Latte-Standard-Blue-Light/gtk-4.0/assets $HOME/.config/gtk-4.0/assets
sudo flatpak override --env=GTK_THEME=Catppuccin-Latte-Standard-Blue-Light
git cl https://github.com/catppuccin/gnome-terminal
cd gnome-terminal/
./install.py 
clear
git cl https://github.com/catppuccin/mailspring
cd Downloads/
ls
cp cadmium-ubuntu-latest ~/.
cd
ls
file cadmium-ubuntu-latest 
cadmium-ubuntu-latest 
./cadmium-ubuntu-latest 
chmod +x cadmium-ubuntu-latest 
./cadmium-ubuntu-latest --help
./cadmium-ubuntu-latest -i wallpaper.png -o wallpaper-l.png -p l.palette 
./cadmium-ubuntu-latest -i wallpaper.png -o wallpaper-m.png -p m.palette 
./cadmium-ubuntu-latest -i wallpaper-l.png -o wallpaper.png -p l.palette 
./cadmium-ubuntu-latest -i wallpaper-m.png -o wallpaper.png -p m.palette 
./cadmium-ubuntu-latest -i wallpaper.png -o wallpaper-m.png -p m.palette 
nano ex.py
python ex.py h
nano ex.py
nano p.txt
python ex.py p.txt
nano ex.py 
python ex.py p.txt
nano ex.py 
python ex.py p.txt
nano ex.py 
python ex.py p.txt
nano ex.py 
python ex.py p.txt
nano ex.py 
python ex.py p.txt
nano l.txt
nano m.txt
clear
python ex.py l.txt
python ex.py m.txt
nano m.txt 
nano l.txt 
nano m.txt 
mv m.txt m.palette
mv l.txt l.palette
clear
cp Pictures/wallpaper.png .
ls
cd .config/gtk-4.0/
ls
cat settings.ini 
history | grep ln
cd Development/workstation_setup
git st
git add /
git add .
ls main_ws/wallpapers/
git rm main_ws/wallpapers/wallpaper.png 
git st
git cm -m "update wallpaper"
cd main_ws/
ls
mkdir scripts
cd scripts/
nano set-gtk-4.0.sh
clear
git st
git add .
git st
chmod +x set-gtk-4.0.sh 
git st
git cm -am "script to set gtk 4 theme"
clear
git st
cd
cd Development/workstation_setup
cd main_ws/
ls
cd config/
ks
ls
sudo flatpak override --env=GTK_THEME=Catppuccin-Latte-Standard-Blue-Light --system
sudo flatpak override --filesystem=$HOME/.themes --system
cp ~/Pictures/wallpaper.jpg ~/Development/workstation_setup/main_ws/wallpapers/
cd Development/workstation_setup
ls
cd main_ws/
ls
nano gtk_theme
clear
git st
git add .
git cm -m "add theme names"
clear
nano gtk_theme 
git cm -am "included themed apps name"
cd Development/workstation_setup
git ph
sudo flatpak override org.texstudio.TeXstudio --system --env=GTK_THEME=Catppuccin-Latte-Standard-Blue-Light --system
rpm -qa | QGnomePlatform
rpm -qa | grep QGnomePlatform

rpm -qa | grep -i qt
git cl https://github.com/catppuccin/gnome-terminal
cd gnome-terminal/
clear
./install.py 
cat .profile 
nano .profile
cp .profile ~/Development/workstation_setup/main_ws/config/
mkdir -p $HOME/.config/environment.d
cd .config/environment.d/
nano gtk_theme.conf
cp gtk_theme.conf ~/Development/workstation_setup/main_ws/config/
cd
cd .config/gtk-4.0/
ls
nano settings.ini 
cp settings.ini ~/Development/workstation_setup/main_ws/
cd
cd Development/workstation_setup
git st
git diff
clear
git add .
git cm -m "config for gtk theme"
clear
cd main_ws/scripts/
ls
nano set-gtk-4.0.sh 
code set-gtk-4.0.sh 
cd Development/workstation_setup
git st
git cm -am "update scripts"
cd Development/workstation_setup
ls
cd main_ws/scripts/
ls
./set-gtk-4.0.sh 
cd Development/workstation_setup
git ph
nano .profile 
cp .profile ~/Development/workstation_setup/main_ws/config/
nano .profile 
rpm -qa | grep -i qt5
rpm-ostree install qt5ct qt5-qtstyleplugins
systemctl reboot
nano .profile 
rm -rf .config/environment.d/
cd Development/workstation_setup
cd main_ws/
cd config/
ls
ls -l
ls -la
rm .profile 
cd ..
ls
mv settings.ini config/
cd config/
ls
cat settings.ini 
clear
cd ..
git st
git add .
git cm -m "update config"
git ph
flatpak update
clear
rpm-ostree remove qt5ct qt5-qtstyleplugins
systemctl reboot
rpm-ostree status
rpm-ostree upgrade 
systemctl reboot
rpm-ostree cleanup -bpmr
sudo ostree admin pin --unpin 2
sudo ostree admin pin --unpin 1
rpm-ostree status
sudo ostree admin pin 0
sudo ostree admin cleanup -v
flatpak repair
poweroff
cd Downloads/
ls
./Artix_Games_Launcher-x86_64.AppImage 
rm -rf .profile ~/.config/gtk-4.0/
clear
cd .config/
ls
mkdir gtk-4.0
cd gtk-4.0/
nano settings.ini 
cp Development/workstation_setup/main_ws/config/settings.ini .config/gtk-4.0/
sudo flatpak override --reset 
clear
rm -rf .themes/
cd .config/
ls
cd
ls
rm .profile.save 
cd Development/workstation_setup
git st
git add .
git cm -m "update"
git ph
flatpak install flathub org.kde.cantor
flatpak search matplotlib
source cantor/bin/activate
clear
python -m pip --user install matplotlib numpy
python3.11 -m pip --user install matplotlib numpy
python3.10 -m pip --user install matplotlib numpy
python3.10 -m pip -U install matplotlib numpy
python3.10 -m pip install matplotlib numpy -U
python3.10 -m pip show matplotlib
deactivate 
exit
mkdir .cantor
cd .cantor/
ls
python -m venv cantor
toolbox enter fedora-toolbox-35
clear
cd ..
rm -rf .cantor/
cd .local/
sudo flatpak org.kde.cantor override --filesystem=$HOME
sudo flatpak override --filesystem=$HOME org.kde.cantor
sudo flatpak override --env=PATH="$PATH:$HOME/.local/bin:$HOME/.local/lib"
sudo flatpak override --env=PATH="$PATH:$HOME/.local/bin:$HOME/.local/lib" org.kde.cantor 
sudo flatpak override --reset --system
sudo flatpak override --env=PATH="$PATH:$HOME/.local/bin:$HOME/.local/lib" org.kde.cantor
sudo flatpak override --filesystem=$HOME org.kde.cantor
python -m venv cantor
source cantor/bin/activate
python3.10 -m pip install matplotlib numpy -U
deactivate 
exit
mkdir .cantor
cd .cantor/
toolbox enter fedora-toolbox-35
cd ..
rm -rf .cantor/
cd .local/
ls -lah
pip
python -m venv python-libs
source python-libs/bin/activate
clear
python3.10 -m pip install matplotlib numpy -U
python3.10 -m pip show matplotlib
python3.10 -m pip install matplotlib numpy
python -m pip install matplotlib numpy
deactivate 
exit
mkdir .python-lib
cd .python-lib/
ls
toolbox enter fedora-toolbox-35
cd ..
rm -rf .python-lib/
flatpak run org.kde.cantor 
sudo flatpak override --reset --system
flatpak run org.kde.cantor 
flatpak uninstall org.kde.cantor --delete-data --system 
clear
flatpak uninstall --unused --delete-data --system 
clear
sudo flatpak repair --system 
flatpak repair --system 
rm -rf .config/
rm -rf .classified/
rpm-ostree status 
rpm-ostree status | tee Development/workstation_setup/main_ws/ostree
cd Development/workstation_setup
git st
git add .
git cm -m "ostree info"
git ph
flatpak list | tee Development/workstation_setup/main_ws/flatpaks
cd Development/workstation_setup/main_ws/
ls
cat flatpaks 
flatpak list | tee Development/workstation_setup/main_ws/flatpaks
flatpak list > ~/Development/workstation_setup/main_ws/flatpaks
clear
cat flatpaks 
rm flatpaks 
clear
ls
git ph
