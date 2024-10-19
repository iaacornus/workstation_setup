function nbconvert --wraps='toolbox -c fedora-toolbox-40 run bash -c ".anaconda3/envs/bioinformatics_full/bin/jupyter nbconvert"' --wraps='toolbox -c fedora-toolbox-40 run bash -c "/var/home/iaacornus/.anaconda3/envs/bioinformatics_full/bin/jupyter nbconvert"' --description 'alias nbconvert=toolbox -c fedora-toolbox-40 run /var/home/iaacornus/.anaconda3/envs/bioinformatics_full/bin/jupyter nbconvert'
  toolbox -c fedora-toolbox-40 run /var/home/iaacornus/.anaconda3/envs/bioinformatics_full/bin/jupyter nbconvert $argv
        
end
