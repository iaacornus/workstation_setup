function ls --wraps='eza --icons -l -a -h' --wraps='eza --icons -l -a' --wraps='eza --icons -l' --description 'alias ls=eza --icons -l'
  eza --icons -l $argv
        
end
