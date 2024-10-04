function clean_all --wraps='sudo tuned-adm profile throughput-performance && clean_sys && clean_utils && trim && sudo tuned-adm profile powersave' --description 'alias clean_all=sudo tuned-adm profile throughput-performance && clean_sys && clean_utils && trim && sudo tuned-adm profile powersave'
  sudo tuned-adm profile throughput-performance && clean_sys && clean_utils && trim && sudo tuned-adm profile powersave $argv
        
end
