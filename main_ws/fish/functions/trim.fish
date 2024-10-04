function trim --wraps='sudo fstrim --all -v' --wraps='echo 7thupholder | sudo -S fstrim --all -v' --description 'alias trim=echo 7thupholder | sudo -S fstrim --all -v'
  echo 7thupholder | sudo -S fstrim --all -v $argv
        
end
