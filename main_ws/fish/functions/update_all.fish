function update_all --wraps='echo 7thupholder | sudo -S tuned-adm profile throughput-performance && sysup && utilsup && systemctl reboot' --description 'alias update_all=echo 7thupholder | sudo -S tuned-adm profile throughput-performance && sysup && utilsup && systemctl reboot'
  echo 7thupholder | sudo -S tuned-adm profile throughput-performance && sysup && utilsup && systemctl reboot $argv
        
end
