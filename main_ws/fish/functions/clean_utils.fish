function clean_utils --wraps='conda clean -a -y && toolbox -c fedora-toolbox-39 run sudo dnf autoremove -y && toolbox -c fedora-toolbox-39 run sudo dnf clean all && toolbox -c fedora-toolbox-40 run sudo dnf autoremove -y && toolbox -c fedora-toolbox-40 run sudo dnf clean all && flatpak repair' --wraps='conda clean -a -y && flatpak repair' --description 'alias clean_utils=conda clean -a -y && flatpak repair'
  conda clean -a -y && flatpak repair $argv
        
end
