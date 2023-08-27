export SUDO_EDITOR="nvim"
export EDITOR="nvim"
export VISUAL="nvim"

export TERMINAL="alacritty"

export BAT_THEME=""
export MANROFFOPT="-c"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# PATH="$HOME/bin:$HOME/.local/bin:$PATH"

typeset -U path PATH
path=("$HOME/bin" "$HOME/.local/bin" $path)
export PATH

. "$HOME/.cargo/env"
