# Silverblue post install

## Update the system

After the system is up, Silverblue, or perhaps Gnome, automatically download updates of your system, so running `rpm-ostree update` after boot would only give `stderr`. You can wait and reboot later, usually Gnome would give notifications after the update is done. Although you can recheck it with:

```bash
rpm-ostree upgrade
```

Update your preinstalled flatpaks:

```bash
flatpak update
```

And reboot after to apply the updates

```bash
systemctl reboot
```

## Mount external drives and perhaps add it to `/etc/fstab`

If you have an external drive you can mount it into a folder and add it to `/etc/fstab`. 

```bash
mkdir Storage # assuming you are in ~
sudo mount /dev/sdX Storage
```

And you can add it into `/etc/fstab` using `sudo nano /etc/fstab`. List the drives and their `UUID` with `lsblk -f` and add it to `/etc/fstab` with format of:

```
# Ignore the comments, this is and example to fstab entry, don't copy and paste this, your system won't boot
# UUID                                      # mount point (full), also  # filesystem format   # options # dump # fsck
#                                           # no env variables such as 
#                                           # $HOME   
# UUID=e423cfe8-5e8a-419c-87d0-8abb39aa498c /var/home/iaacornus/Storage	ext4	              defaults	0       0
# UUID=<your device uuid>                   <mount point>               <filesystem format> <options> <dump>  <fsck>
```

Here I suggest using `defaults` for options, 0 for `dump` and `fsck` to disable the checking, refer to [archwiki - fstab](https://wiki.archlinux.org/title/fstab). Check `/etc/fstab` with `cat /etc/fstab`. Be sure to input the correct UUID and options, other wise your system won't boot.

## Install rpm-fusion and other repos you need

###   VSCode repo (ONLY IF YOU PLAN TO INSTALL VSCODE)

#### MY NOT ENCOURAGED METHOD:

VSCode will be installed in the base system since it does not work correctly in flatpak environment. Also, as opposed to [VSCode's official documentation](https://code.visualstudio.com/docs/setup/linux), the key was not imported `sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc`, since the root filesystem in Silverblue is immutable, hence would only give `stderr`.

```bash
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
```

#### ENCOURAGED METHOD

This can also be installed in toolbox, create a `toolbox create` and `toolbox enter`, start by updating the system with `sudo dnf update` and follow [VSCode's official documentation](https://code.visualstudio.com/docs/setup/linux). This is the practice I recommend, unless you also have a good reason to layer it into the base system.

```bash
toolbox create
toolbox enter
sudo dnf update # you can add -y flag

# import the keys
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

# add the repos to /yum.repos.d
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

# install code
dnf check-update
sudo dnf install code
```

You can also create desktop entry for VSCode in `$HOME/.local/share/applications`. You can replace `Version=1.0`, although it doesn't really matter, if ever you named your toolbox container replace `Exec` with `Exec=toolbox run --container <name of your container> code`.

```
[Desktop Entry]
Type=Application
Version=1.0
Name=Visual Studio Code
Exec=toolbox run code
Icon=code.png
Terminal=false
Keywords=vscode, code, vs
```

You can use `echo` for this one `echo -e "[Desktop Entry]\nType=Application\nVersion=1.0\nName=Visual Studio Code\nExec=toolbox run code\nIcon=code.png\nTerminal=false\nKeywords=vscode, code, vs" > $HOME/.local/share/applications/code.desktop`.

### Setup flatpak

```bash
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

### RPMfusion and other utilities

Fedora disable the automatic install of `openh264` by default:

> Upstream Firefox versions download and install the OpenH264 plugin by default automatically. Due to it's binary nature, Fedora disables this automatic download. 

You can install it `mozilla-openh264` and `gstreamer1-plugin-openh264` to support codecs in Firefox. ***OMIT PAPIRUS-ICON-THEME or GNOME-TWEAKS if you don't want to install papirus or tweaks. And only install the repository if you plan to install: nvidia drivers and ffmpeg-libs**

```bash
rpm-ostree install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm gnome-tweaks papirus-icon-theme mozilla-openh264 gstreamer1-plugin-openh264
```

Reboot again `systemctl reboot`.

## Install the apps from repo

Every boot, the system automatically runs  `rpm-ostree upgrade --check`, so you don't need to run it again.


### Nvidia install

Check first if you have nvidia card with `/sbin/lspci | grep -e 3D`, it would show you something like this:

```
02:00.0 3D controller: NVIDIA Corporation GP108M [GeForce MX230] (rev a1)
```

Otherwise, you don't have nvidia card, and don't proceed here. If you have nvidia card, install it, assuming you already installed rpmfusion repo nonfree

```bash
sudo rpm-ostree install akmod-nvidia
```

`sudo` was used since there are scripts needed to be run by the installation, such as kernel recompilation, be sure to wait at least 5 minutes before reboot. And check your nvidia install with `modinfo -F version nvidia`, it should give the version number of your driver such as `510.60.02`, not `stderr`.

### Other apps

**THIS IS THE APPS THAT I USE, OMIT THE THINGS YOU DON'T NEED** Other utilities.

```bash
rpm-ostree install ffmpeg-libs code
```

### Some of my flatpak apps

These are the apps that I use, and can recommend:

1. VLC for media `flatpak install flathub org.videolan.VLC`
2. Zotera for citation manager `flatpak install flathub org.zotero.Zotero`
3. Libreoffice for office suite `flatpak install flathub org.libreoffice.LibreOffice`
4. GIMP for photoediting `flatpak install flathub org.gimp.GIMP`
5. Thunderbird for email client `flatpak install flathub org.gimp.GIMP`
6. Gnome Music for music player `flatpak install flathub org.gnome.Music`
7. Gnome boxes for virtualization `flatpak install flathub org.gnome.Boxes`
8. Get Things Gnome (GTG) for productivity `flatpak install flathub org.gnome.GTG`
9. Discord as discord client `flatpak install flathub com.discordapp.Discord`
10. Element as matrix client `flatpak install flathub im.riot.Riot`
11. JASP for statistics `flatpak install flathub org.jaspstats.JASP`
12. Labplot2 for plotting, although JASP already offer this, I use this for simple charts `flatpak install flathub org.kde.labplot2`
13. Steam for games `flatpak install flathub com.valvesoftware.Steam`
14. Brave as alternative browser for other stuff `flatpak install flathub com.brave.Browser`
15. Extensions to modify your extensions `flatpak install flathub org.gnome.Extensions`
16. Bitwarden as password manager `flatpak install flathub com.bitwarden.desktop`
17. TexStudio for latex `flatpak install flathub org.texstudio.TeXstudio`

## My system setup

### Config files

There are a lot of user setup I do to my system. You can also get some in this one. Some of the configs come from my [repo](https://github.com/iaacornus/workstation_setup)

```bash
git clone https://github.com/iaacornus/workstation_setup
```

#### htoprc

![htoprc](https://user-images.githubusercontent.com/96870156/167064284-cb3335fe-f232-4f68-9fac-522364c218b4.png)

```bash
toolbox enter
sudo dnf install htop collectd-sensors
```

Move `htoprc` config to `$HOME/.config/htop/`. And to your `.bashrc` add `alias htop="toolbox run htop"`.

#### bashrc

![bashrc](https://user-images.githubusercontent.com/96870156/167064465-7512f2e8-56d7-4df2-a0fb-2f30dd4d71a6.png)

For `.bashrc`, move `workstation_setup/main_ws/sys/.bashrc` to your `$HOME`. It also comes with some script and alias. Some of the example prompts: normal prompt, toolbox prompt, toolbox prompt in `git` dir, normal prompt again, and normal prompt in `git` dir. Or you can just add this to your `.bashrc`

```bash
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

PS1="\[\e[1;32m\]\h\[\e[0m\]:\[\e[1;36m\]\w\[\e[0m\]\n\u\$(if git rev-parse --git-dir > /dev/null 2>&1; then echo ':'; fi)\[\e[1;34m\]\$(parse_git_branch)\[\e[0m\] ❯ "

export PS1

PROMPT_DIRTRIM=2
```

Some of the `git` aliases:

```bash
# git aliases
alias status="git status"
alias add="git add"
alias commit="git commit -S"
alias push="git push"
alias pull="git pull"
alias rebase="git checkout"
alias cbranch="git checkout -b"
alias diff="git diff"
alias reset="git restore --staged"
alias remote="git remote add"
alias restore="git restore"
alias lbranch="git branch"
```

And for some of my scripts:

```bash
alias help-me="bash $HOME/.sys/utils.sh help-me"
alias sys-info="bash $HOME/.sys/utils.sh sys-info"
alias config-check="bash $HOME/.sys/utils.sh config-check"
alias tex-gen="bash $HOME/.sys/utils.sh tex-gen"
alias clean-up="bash $HOME/.sys/utils.sh clean-up"
alias htop="toolbox run htop"
```

For this to work you need to create a `.sys` dir to your `$HOME` folder and move `workstation_setup/main_ws/utils/utils.sh`.

### Wallpapers

Some of the wallpapers are [here](https://github.com/iaacornus/workstation_setup/tree/main/main_ws/wallpapers), such as this one:

![default_fedora_wallpaper](https://user-images.githubusercontent.com/96870156/167064921-101e2af7-1386-464d-b22d-840803a65136.png)

### System optimization

You can also mask `NetworkManager-wait-online.service` to decrease boot time with: `sudo systemctl disable NetworkManager-wait-online.service; sudo systemctl mask NetworkManager-wait-online.service`.

### VSCode extensions

**Display**: Better Comments, Fluent Icons (product icon theme), Material Icon Theme (for icon theme), One Dark Pro (for colorscheme)

**Utilities**: Python indent, C/C++, Code Spell Checker, Prettier, Pylance, Python Preview, TabNine Autocomplete, Microsoft Python, Jupyter, Jupyter Keymap, Remote - SSH, Remote - SSH: Editor Config, Gitlens, PlatformIO IDE, Jupyter Notebook Renderers

### Toolbox setup

For my C Development

```bash
toolbox enter
sudo dnf update
sudo dnf install gcc
```

### Git setup

Setup your `git` and enable GPG key.

```bash
git config --global user.name <username here>
git config --global user.email <email here>
git config --global user.signingkey <key here>
git config --global commit.gpgsign true
```

### SSH config for google colab

Install [`cloudflared`](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/install-and-setup/installation/) in toolbox:

```bash
toolbox enter
wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-x86_64.rpm
sudo dnf install cloudflared-linux-x86_64.rpm
```

And add this to your `.ssh/config`:

```bash
Host *.trycloudflare.com
    HostName %h
    User root
    Port 22
    ProxyCommand toolbox run /usr/local/bin/cloudflared access ssh --hostname %h
```

### Firefox extensions

[HTTPS everywhere](https://addons.mozilla.org/en-US/firefox/addon/https-everywhere/), [No Script](https://addons.mozilla.org/en-US/firefox/addon/noscript/), [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin), [Privacy Badger](https://addons.mozilla.org/en-US/firefox/addon/privacy-badger17/), [Facebook Container](https://addons.mozilla.org/en-US/firefox/addon/facebook-container/), and [AdBlocker Ultimate](https://addons.mozilla.org/en-US/firefox/addon/adblocker-ultimate/).

### Some preinstalled flatpak apps you can remove.

You can completely remove the flatpak with `flatpak uninstall --system --delete-data <app>`. Here are some you can remove:

1. Calculator `org.gnome.Calculator`
2. Calendar `org.gnome.Calendar`
3. Connections `org.gnome.Connections`
4. Contacts `org.gnome.Contacts`
5. PDF reader `org.gnome.Evince` if you plan to install another pdf reader
6. Logs `org.gnome.Logs`
7. Maps `org.gnome.Maps`
8. Weather apps `org.gnome.Weather`
9. Disk usage analyzer `org.gnome.baobab`
