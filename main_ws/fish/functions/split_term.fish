function split_term --wraps=tmux\ new-session\ \\\;\ split-window\ -h\\\;\ attach --description alias\ split_term=tmux\ new-session\ \\\;\ split-window\ -h\\\;\ attach
  tmux new-session \; split-window -h\; attach $argv
        
end
