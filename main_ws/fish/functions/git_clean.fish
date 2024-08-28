function git_clean --wraps='git remote prune origin && git repack && git prune-packed && git gc --aggressive' --description 'alias git_clean=git remote prune origin && git repack && git prune-packed && git gc --aggressive'
  git remote prune origin && git repack && git prune-packed && git gc --aggressive $argv
        
end
