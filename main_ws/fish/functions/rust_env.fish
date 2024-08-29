function rust_env --wraps='source "$HOME/.cargo/env.fish"' --description 'alias rust_env=source "$HOME/.cargo/env.fish"'
  source "$HOME/.cargo/env.fish" $argv
        
end
