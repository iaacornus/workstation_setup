function gignore --wraps='git update-index --assume-unchanged' --description 'alias gignore=git update-index --assume-unchanged'
  git update-index --assume-unchanged $argv
        
end
