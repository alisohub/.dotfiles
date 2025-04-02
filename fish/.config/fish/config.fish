if status is-interactive
    set -x EDITOR /usr/bin/nvim
    # Commands to run in interactive sessions can go here
end
fish_hybrid_key_bindings

alias t="__zoxide_z"
alias ta="tmux a"
alias live="live-server"
alias vim="nvim"
alias ls="exa"

fish_add_path -g -p ~/development/flutter/bin

zoxide init fish | source
starship init fish | source
