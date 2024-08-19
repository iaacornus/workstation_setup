function clean_sys --wraps='sudo ostree admin cleanup -vv && rpm-ostree cleanup -bpmr && toolbox -c fedora-toolbox-40 run sudo dnf clean all' --description 'alias clean_sys=sudo ostree admin cleanup -vv && rpm-ostree cleanup -bpmr && toolbox -c fedora-toolbox-40 run sudo dnf clean all'
  sudo ostree admin cleanup -vv && rpm-ostree cleanup -bpmr && toolbox -c fedora-toolbox-40 run sudo dnf clean all $argv
        
end
