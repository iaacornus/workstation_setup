function gdiff --wraps='git diff --name-only --relative --diff-filter=d | xargs bat --diff' --description 'alias gdiff=git diff --name-only --relative --diff-filter=d | xargs bat --diff'
  git diff --name-only --relative --diff-filter=d | xargs bat --diff $argv
        
end
