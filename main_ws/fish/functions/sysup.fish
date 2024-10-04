function sysup --wraps='rpm-ostree upgrade && echo 7thupholder | sudo -S flatpak update --system -y' --description 'alias sysup=rpm-ostree upgrade && echo 7thupholder | sudo -S flatpak update --system -y'
  rpm-ostree upgrade && echo 7thupholder | sudo -S flatpak update --system -y $argv
        
end
