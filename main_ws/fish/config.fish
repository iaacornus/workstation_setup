if status is-interactive
    # Commands to run in interactive sessions can go here
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /var/home/iaacornus/.anaconda3/bin/conda
    eval /var/home/iaacornus/.anaconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/var/home/iaacornus/.anaconda3/etc/fish/conf.d/conda.fish"
        . "/var/home/iaacornus/.anaconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/var/home/iaacornus/.anaconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

bash $HOME/.colorscripts/./(ls .colorscripts/ | shuf -n 1)
