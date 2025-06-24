function sysup --wraps='rpm-ostree upgrade && echo 7thupholder | sudo -S flatpak update --system -y' --wraps='rpm-ostree upgrade && echo 7thupholder | sudo -S flatpak update --system -y && flatpak update -y' --description 'alias sysup=rpm-ostree upgrade && echo 7thupholder | sudo -S flatpak update --system -y && flatpak update -y'
  rpm-ostree upgrade && echo 7thupholder | sudo -S flatpak update --system -y && flatpak update -y $argv
        
end
