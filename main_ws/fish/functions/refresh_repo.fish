function refresh_repo --wraps='rpm-ostree refresh-md; toolbox -c fedora-toolbox-40 run sudo dnf repoquery; toolbox -c fedora-toolbox-39 run sudo dnf repoquery; flatpak update --appstream' --description 'alias refresh_repo=rpm-ostree refresh-md; toolbox -c fedora-toolbox-40 run sudo dnf repoquery; toolbox -c fedora-toolbox-39 run sudo dnf repoquery; flatpak update --appstream'
  rpm-ostree refresh-md; toolbox -c fedora-toolbox-40 run sudo dnf repoquery; toolbox -c fedora-toolbox-39 run sudo dnf repoquery; flatpak update --appstream $argv
        
end
