function update_all --wraps='rpm-ostree upgrade && flatpak update -y && code --update-extensions && toolbox -c fedora-toolbox-40 run sudo dnf update -y && flatpak repair && poweroff' --description 'alias update_all=rpm-ostree upgrade && flatpak update -y && code --update-extensions && toolbox -c fedora-toolbox-40 run sudo dnf update -y && flatpak repair && poweroff'
  rpm-ostree upgrade && flatpak update -y && code --update-extensions && toolbox -c fedora-toolbox-40 run sudo dnf update -y && flatpak repair && poweroff $argv
        
end
