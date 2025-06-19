function clean_all --wraps='clean_sys && clean_utils && trim && echo 7thupholder | sudo -S tuned-adm profile powersave' --wraps='clean_sys && clean_utils && echo 7thupholder | sudo -S tuned-adm profile powersave' --wraps='clean_sys && clean_utils' --description 'alias clean_all=clean_sys && clean_utils'
  clean_sys && clean_utils $argv
        
end
