# Silverblue post install

You can get the silverblue cheatsheet of Fedora's Team Silverblue [here](https://docs.fedoraproject.org/en-US/fedora-silverblue/_attachments/silverblue-cheatsheet.pdf).

## Update the system

After the system is up, Silverblue, or perhaps by Gnome software, automatically download updates of your system, so running `rpm-ostree update` after boot would only give `stderr`. You can wait and reboot later, usually Gnome would give notifications after the update is done. Although you can check the packages with:

```bash
rpm-ostree upgrade
```

If you just want a summary of update, such as the added, removed and upgraded do: `rpm-ostree upgrade --check`

Update your preinstalled flatpaks, this may also not be necessary, since this is automatically updated by Gnome software center, but if you want to be sure, do:

```bash
flatpak update
```

And reboot after to apply the updates (there is also no problem to do this in GUI)rpm-ostree upgrade --check

```bash
systemctl reboot
```

## Mount external drives and perhaps add it to `/etc/fstab`

If you have an external drive you can mount it into a folder and add it to `/etc/fstab` for automount in boot.

```bash
sudo mount /dev/sdX <dir>
```

And you can add it into `/etc/fstab` using `sudo nano /etc/fstab` or `vi` if you want. List the drives and their `UUID` with `lsblk -f` and add it to `/etc/fstab` with format of:

```
# Ignore the comments, this is and example to fstab entry, don't copy and paste this, your system won't boot
# UUID                                      # mount point (full), also  # filesystem format   # options # dump # fsck
#                                           # no env variables such as 
#                                           # $HOME   
# UUID=e423cfe8-5e8a-419c-87d0-8abb39aa498c /var/home/iaacornus/Storage	ext4	              defaults	0       0
# UUID=<your device uuid>                   <mount point>               <filesystem format> <options> <dump>  <fsck>
```

Here I suggest using `defaults` for options, 0 for `dump` and `fsck` to disable the checking (increasing the boot time, and avoiding potential errors, and since you only do checking if the drive is part of the OS filesystem), refer to [archwiki - fstab](https://wiki.archlinux.org/title/fstab). Check `/etc/fstab` with `cat /etc/fstab`. Be sure to input the correct UUID and options, other wise your system won't boot.

## Install rpm-fusion and other repos you need

###   VSCode repo (ONLY IF YOU PLAN TO INSTALL VSCODE)

#### MY NOT ENCOURAGED METHOD:

VSCode will be installed in the base system since it does not work correctly in flatpak environment. Also, as opposed to [VSCode's official documentation](https://code.visualstudio.com/docs/setup/linux), the key was not imported `sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc`, since the root filesystem in Silverblue is immutable, hence would only give `stderr`.

```bash
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
```

But you can also do:

```bash
echo -e [code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee -a /etc/yum.repos.d/vscode.repo
```

#### ENCOURAGED METHOD

This can also be installed in toolbox, create a `toolbox create` and `toolbox enter`, start by updating the system with `sudo dnf update` and follow [VSCode's official documentation](https://code.visualstudio.com/docs/setup/linux). This is the practice I recommend, unless you also have a good reason to layer it into the base system.

```bash
toolbox create
toolbox enter
sudo dnf update # you can add -y (assume yes) flag, although I don't use it since I want to see my update contents

# import the keys
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

# add the repos to /yum.repos.d
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

# install code
dnf check-update
sudo dnf install code
```

You can also create desktop entry for VSCode in `$HOME/.local/share/applications`. You can replace `Version=1.0` (get the Version with `dnf list all | grep "code"`), although it doesn't really matter, if ever you named your toolbox container replace `Exec` with `Exec=toolbox run --container <name of your container> code`, refer to [toolbox manual](https://man.archlinux.org/man/community/toolbox/toolbox.1.en)

```
[Desktop Entry]
Type=Application
Version=1.0
Name=Visual Studio Code
Exec=toolbox run code
Icon=code.png
Terminal=false
Keywords=vscode, code, vs # you can add more if you like
```

You can use `echo` for this one `echo -e "[Desktop Entry]\nType=Application\nVersion=1.0\nName=Visual Studio Code\nExec=toolbox run code\nIcon=code.png\nTerminal=false\nKeywords=vscode, code, vs" > $HOME/.local/share/applications/code.desktop`.

### Setup flatpak

```bash
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

### RPMfusion and other utilities

Fedora disable the automatic install of `openh264` by default, for this reason:

> Upstream Firefox versions download and install the OpenH264 plugin by default automatically. Due to it's binary nature, Fedora disables this automatic download. 

You can install it `mozilla-openh264` and `gstreamer1-plugin-openh264` to support codecs in Firefox. And do `CTRL` + `Shift` + `A` in Firefox to go into the add ons manager > Plugins, and enable the OpenH264* plugins.

**OMIT PAPIRUS-ICON-THEME or GNOME-TWEAKS if you don't want to install papirus or tweaks. And only install the repository if you plan to install: nvidia drivers (non free) and ffmpeg-libs (free)**

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

`sudo` was used since there are scripts needed to be run by the installation, such as kernel recompilation, be sure to wait at least 5 minutes before reboot. And after reboot, check your nvidia install with `modinfo -F version nvidia`, it should give the version number of your driver such as `510.60.02`, not `stderr`.

### Other apps

**THIS IS THE APPS THAT I USE, OMIT THE THINGS YOU DON'T NEED**

```bash
rpm-ostree install ffmpeg-libs code
```

### Some of my flatpak apps

These are the apps that I use, and can recommend:

1. VLC for media `flatpak install flathub org.videolan.VLC`
2. Zotera for citation manager `flatpak install flathub org.zotero.Zotero`
3. Libreoffice for office suite `flatpak install flathub org.libreoffice.LibreOffice`
4. GIMP for photoediting `flatpak install flathub org.gimp.GIMP`
5. Thunderbird for email client `flatpak install flathub org.mozilla.Thunderbird`
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

### Flatpak modifications

#### Theming

Since flatpaks are sandboxed, you can either install the flatpak version of GTK theme you are using as flatpak as well, thus giving applications the theme, you can search it using `flatpak search .gtk`. Or override the `$HOME/.themes/` dir, with `sudo flatpak override --filesystem=~/.themes`.

#### Permissions

Other reddit users suggested, such as [u/IceOleg](https://www.reddit.com/user/IceOleg/), to override the `home` and `host` dir as well with:

```bash
flatpak override --user --nofilesystem=home
flatpak override --user --nofilesystem=host
```

Which can be given back to some applications that need it later on. [Flatseal](https://github.com/tchx84/flatseal) is also a good utility for managing permissions as [u/GunnarRoxen](https://www.reddit.com/user/GunnarRoxen/) suggested, can be installed with `flatpak install flathub com.github.tchx84.Flatseal`

## System optimization

You can also mask `NetworkManager-wait-online.service`. It is simply a ["service simply waits, doing absolutely nothing, until the network is connected, and when this happens, it changes its state so that other services that depend on the network can be launched to start doing their thing."](https://askubuntu.com/questions/1018576/what-does-networkmanager-wait-online-service-do/1133545#1133545)

> In some multi-user environments part of the boot-up process can come from the network. For this case systemd defaults to waiting for the network to come on-line before certain steps are taken.

Masking it can decrease the boot time of at least 15 - 20s: `sudo systemctl disable NetworkManager-wait-online.service; sudo systemctl mask NetworkManager-wait-online.service`.

There are also some preinstalled flatpak that you can safely remove. You can completely remove the flatpak with `flatpak uninstall --system --delete-data <app>`. Here are some you can remove:

1. Calculator `org.gnome.Calculator`
2. Calendar `org.gnome.Calendar`
3. Connections `org.gnome.Connections`
4. Contacts `org.gnome.Contacts`
5. PDF reader `org.gnome.Evince` if you plan to install another pdf reader
6. Logs `org.gnome.Logs`
7. Maps `org.gnome.Maps`
8. Weather apps `org.gnome.Weather`
9. Disk usage analyzer `org.gnome.baobab`

## My system setup

This is the end of the general post install guide, however if you are somehow interested in my user setup, you can proceed further, this includes my htop, `.bashrc` setup, git, extensions for firefox, vscode, and ssh as well as toolbox setup. There are a lot of user setup I do to my system. You can also get some in this one. Some of the configs come from my [repo](https://github.com/iaacornus/workstation_setup). 

### Config files

If try to keep my setup away from doing a lot of modifications, so it would be as close as to vanilla Gnome as possible, to avoid potential breaking every update, e.g. From Gnome 3.3* to Gnome 40, broke a lot of extensions as well as theming, so do Gnome 41 -> Gnome 42, although dev teams manage to keep up with the changes, it is still an inconvience for me, so I only modify some apps.

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

Installing [`cloudflared`](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/install-and-setup/installation/) in to the base system image, or layering it, is not possible due to the permissions on `/usr`, so it could only be installed inside toolbox, and therefore it won't work with VSCode installed in the base image.

```bash
toolbox enter
wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-x86_64.rpm
sudo dnf install cloudflared-linux-x86_64.rpm
```

[Although you can try and do some solutions, such as symlinking different install paths to `/usr/bin`. This might need some work around to work with `cloudflared`, but this gives an idea for solution.](https://github.com/mullvad/mullvadvpn-app/issues/1570#issuecomment-602255731)

And add this to your `.ssh/config`:

```bash
Host *.trycloudflare.com
    HostName %h
    User root
    Port 22
    ProxyCommand /usr/local/bin/cloudflared access ssh --hostname %h
```

### Firefox extensions

[HTTPS everywhere](https://addons.mozilla.org/en-US/firefox/addon/https-everywhere/), [No Script](https://addons.mozilla.org/en-US/firefox/addon/noscript/), [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin), [Privacy Badger](https://addons.mozilla.org/en-US/firefox/addon/privacy-badger17/), [Facebook Container](https://addons.mozilla.org/en-US/firefox/addon/facebook-container/), and [AdBlocker Ultimate](https://addons.mozilla.org/en-US/firefox/addon/adblocker-ultimate/).
