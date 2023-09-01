export SUDO_EDITOR="nvim"
export EDITOR="nvim"
export VISUAL="nvim"
export MANPAGER="nvim +Man!"

export TERMINAL="alacritty"

typeset -U path PATH
path=("$HOME/bin" "$HOME/.local/bin" $path)
export PATH

. "$HOME/.cargo/env"
