function toolbox_clean --wraps='toolbox -c fedora-toolbox-40 run sudo dnf clean all -y' --description 'alias toolbox_clean=toolbox -c fedora-toolbox-40 run sudo dnf clean all -y'
  toolbox -c fedora-toolbox-40 run sudo dnf clean all -y $argv
        
end
