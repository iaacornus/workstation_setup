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
cat .bashrc
sudo nano /etc/gitconfig
sudo nano /etc/nanorc 
clear
nano
sudo nano /etc/hosts 
sudo cat /etc/hosts 
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
rpm-ostree refresh-md 
rpm-ostree install code git gnome-tweaks gstreamer1-plugin-libav gstreamer1-plugin-openh264 gstreamer1-plugins-bad-free-extras gstreamer1-plugins-bad-freeworld gstreamer1-plugins-ugly gstreamer1-vaapi intel-media-driver mozilla-openh264 papirus-icon-theme yaru-theme
nano rpm.txt
rpm-ostree install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
systemctl reboot
sudo systemctl status battery-charge-threshold.service 
clear
flatpak kill org.gnome.Software
flatpak run org.gnome.Software
clear
cat rpm.txt 
rpm-ostree install code git gnome-tweaks gstreamer1-plugin-libav gstreamer1-plugin-openh264 gstreamer1-plugins-bad-free-extras gstreamer1-plugins-bad-freeworld gstreamer1-plugins-ugly gstreamer1-vaapi intel-media-driver mozilla-openh264 papirus-icon-theme yaru-theme
gnome-software 
free -h
chown -R iaacornus Documents/
chown -R iaacornus Development/
chown -R iaacornus Downloads/
chown -R iaacornus Pictures/
chown -R iaacornus Music/
