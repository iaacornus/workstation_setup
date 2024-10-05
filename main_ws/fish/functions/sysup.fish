function sysup --wraps='rpm-ostree upgrade && echo 7thupholder | sudo -S flatpak update --system -y; systemctl reboot' --description 'alias sysup=rpm-ostree upgrade && echo 7thupholder | sudo -S flatpak update --system -y; systemctl reboot'
  rpm-ostree upgrade && echo 7thupholder | sudo -S flatpak update --system -y; systemctl reboot $argv
        
end
