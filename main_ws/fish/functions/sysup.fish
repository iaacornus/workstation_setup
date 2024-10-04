function sysup --wraps='rpm-ostree upgrade && flatpak update -y' --description 'alias sysup=rpm-ostree upgrade && flatpak update -y'
  rpm-ostree upgrade && flatpak update -y $argv
        
end
