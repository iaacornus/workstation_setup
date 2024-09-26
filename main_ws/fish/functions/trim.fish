function trim --wraps='sudo fstrim --all -v' --description 'alias trim=sudo fstrim --all -v'
  sudo fstrim --all -v $argv
        
end
