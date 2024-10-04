function fprepair --wraps='echo 7thupholder | sudo -S flatpak repair --system && flatpak update -y && flatpak repair' --description 'alias fprepair=echo 7thupholder | sudo -S flatpak repair --system && flatpak update -y && flatpak repair'
  echo 7thupholder | sudo -S flatpak repair --system && flatpak update -y && flatpak repair $argv
        
end
