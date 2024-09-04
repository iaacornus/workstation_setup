function enable_docker --wraps='sudo chmod 777 /var/run/docker.sock' --description 'alias enable_docker=sudo chmod 777 /var/run/docker.sock'
  sudo chmod 777 /var/run/docker.sock $argv
        
end
