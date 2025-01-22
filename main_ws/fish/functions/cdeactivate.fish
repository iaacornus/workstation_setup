function cdeactivate --wraps='conda deactivate' --description 'alias cdeactivate=conda deactivate'
  conda deactivate $argv
        
end
