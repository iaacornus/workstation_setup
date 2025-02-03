function refresh_repo --wraps='rpm-ostree refresh-md; flatpak update --appstream' --description 'alias refresh_repo=rpm-ostree refresh-md; flatpak update --appstream'
  rpm-ostree refresh-md; flatpak update --appstream $argv
        
end
