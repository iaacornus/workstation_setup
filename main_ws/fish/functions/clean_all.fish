function clean_all --wraps='clean_sys && clean_utils && trim && echo 7thupholder | sudo -S tuned-adm profile powersave' --description 'alias clean_all=clean_sys && clean_utils && trim && echo 7thupholder | sudo -S tuned-adm profile powersave'
  clean_sys && clean_utils && trim && echo 7thupholder | sudo -S tuned-adm profile powersave $argv
        
end
