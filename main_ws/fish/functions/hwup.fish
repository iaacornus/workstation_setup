function hwup --wraps='echo 7thupholder | sudo -S fwupdmgr get-devices && echo 7thupholder | sudo -S fwupdmgr refresh --force && echo 7thupholder | sudo -S fwupdmgr get-updates && echo 7thupholder | sudo -S fwupdmgr update && poweroff' --description 'alias hwup=echo 7thupholder | sudo -S fwupdmgr get-devices && echo 7thupholder | sudo -S fwupdmgr refresh --force && echo 7thupholder | sudo -S fwupdmgr get-updates && echo 7thupholder | sudo -S fwupdmgr update && poweroff'
  echo 7thupholder | sudo -S fwupdmgr get-devices && echo 7thupholder | sudo -S fwupdmgr refresh --force && echo 7thupholder | sudo -S fwupdmgr get-updates && echo 7thupholder | sudo -S fwupdmgr update && poweroff $argv
        
end
