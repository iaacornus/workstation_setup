function clean_all --wraps='clean_sys && clean_utils && trim' --description 'alias clean_all=clean_sys && clean_utils && trim'
  clean_sys && clean_utils && trim $argv
        
end
