function sysup --wraps='echo 7thupholder | sudo -S tuned-adm profile throughput-performance && rpm-ostree upgrade && echo 7thupholder | sudo -S flatpak update --system -y' --description 'alias sysup=echo 7thupholder | sudo -S tuned-adm profile throughput-performance && rpm-ostree upgrade && echo 7thupholder | sudo -S flatpak update --system -y'
  echo 7thupholder | sudo -S tuned-adm profile throughput-performance && rpm-ostree upgrade && echo 7thupholder | sudo -S flatpak update --system -y $argv
        
end
