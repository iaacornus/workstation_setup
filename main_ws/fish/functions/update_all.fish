function update_all --wraps='rpm-ostree upgrade && flatpak update -y && code --update-extensions && toolbox -c fedora-toolbox-40 run sudo dnf clean all && toolbox -c fedora-toolbox-40 run dnf5 update -y  && poweroff' --description 'alias update_all=rpm-ostree upgrade && flatpak update -y && code --update-extensions && toolbox -c fedora-toolbox-40 run sudo dnf clean all && toolbox -c fedora-toolbox-40 run dnf5 update -y  && poweroff'
  rpm-ostree upgrade && flatpak update -y && code --update-extensions && toolbox -c fedora-toolbox-40 run sudo dnf clean all && toolbox -c fedora-toolbox-40 run dnf5 update -y  && poweroff $argv
        
end
