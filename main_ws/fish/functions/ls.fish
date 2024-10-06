function ls --wraps='eza --icons' --wraps='eza --icons -l' --description 'alias ls=eza --icons -l'
  eza --icons -l $argv
        
end
