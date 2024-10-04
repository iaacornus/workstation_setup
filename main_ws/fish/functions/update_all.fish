function update_all --wraps='hwup && sysup && utilsup' --description 'alias update_all=hwup && sysup && utilsup'
  hwup && sysup && utilsup $argv
        
end
