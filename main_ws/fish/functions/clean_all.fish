function clean_all --wraps='clean_sys && clean_utils && trim' --wraps='clean_sys && clean_utils && trim && systemctl reboot' --description 'alias clean_all=clean_sys && clean_utils && trim && systemctl reboot'
  clean_sys && clean_utils && trim && systemctl reboot $argv
        
end
