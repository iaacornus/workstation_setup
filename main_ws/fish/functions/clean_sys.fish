function clean_sys --wraps='echo 7thupholder | sudo -S ostree admin cleanup -vv && rpm-ostree cleanup -bpmr && echo 7thupholder | sudo -S flatpak repair --system' --description 'alias clean_sys=echo 7thupholder | sudo -S ostree admin cleanup -vv && rpm-ostree cleanup -bpmr && echo 7thupholder | sudo -S flatpak repair --system'
  echo 7thupholder | sudo -S ostree admin cleanup -vv && rpm-ostree cleanup -bpmr && echo 7thupholder | sudo -S flatpak repair --system $argv
        
end
