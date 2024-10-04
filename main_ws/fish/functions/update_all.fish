function update_all --wraps='hwup && sysup && utilsup && systemctl reboot' --description 'alias update_all=hwup && sysup && utilsup && systemctl reboot'
  hwup && sysup && utilsup && systemctl reboot $argv
        
end
