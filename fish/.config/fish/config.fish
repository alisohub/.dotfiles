if status is-interactive
    # Commands to run in interactive sessions can go here
end
fish_hybrid_key_bindings

alias f="__zoxide_z"
alias ta="tmux a"
alias live="live-server"
alias rr="ranger"
alias vim="nvim"
alias cat="bat --wrap=never"
alias la="ls -la"

zoxide init fish | source
starship init fish | source
