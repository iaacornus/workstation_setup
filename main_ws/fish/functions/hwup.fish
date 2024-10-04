function hwup --wraps='echo 7thupholder | sudo -S fwupdmgr get-devices && echo 7thupholder | sudo -S fwupdmgr refresh --force && echo 7thupholder | sudo -S fwupdmgr get-updates && echo 7thupholder | sudo -S fwupdmgr update' --description 'alias hwup=echo 7thupholder | sudo -S fwupdmgr get-devices && echo 7thupholder | sudo -S fwupdmgr refresh --force && echo 7thupholder | sudo -S fwupdmgr get-updates && echo 7thupholder | sudo -S fwupdmgr update'
  echo 7thupholder | sudo -S fwupdmgr get-devices && echo 7thupholder | sudo -S fwupdmgr refresh --force && echo 7thupholder | sudo -S fwupdmgr get-updates && echo 7thupholder | sudo -S fwupdmgr update $argv
        
end
