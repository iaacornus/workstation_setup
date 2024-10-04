function sysup --wraps='rpm-ostree upgrade && echo 7thupholder | sudo flatpak update --system -y' --description 'alias sysup=rpm-ostree upgrade && echo 7thupholder | sudo flatpak update --system -y'
  rpm-ostree upgrade && echo 7thupholder | sudo flatpak update --system -y $argv
        
end
