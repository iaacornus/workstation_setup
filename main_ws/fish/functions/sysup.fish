function sysup --wraps='echo 7thupholder | sudo -S tuned-adm profile throughput-performance && rpm-ostree upgrade && echo 7thupholder | sudo -S flatpak update --system -y' --wraps='rpm-ostree upgrade && echo 7thupholder | sudo -S flatpak update --system -y' --wraps='rpm-ostree upgrade && echo 7thupholder | sudo -S flatpak update --system -y; systemctl reboot' --description 'alias sysup=rpm-ostree upgrade && echo 7thupholder | sudo -S flatpak update --system -y; systemctl reboot'
  rpm-ostree upgrade && echo 7thupholder | sudo -S flatpak update --system -y; systemctl reboot $argv
        
end
