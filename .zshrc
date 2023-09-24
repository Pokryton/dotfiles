HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

setopt autocd
setopt longlistjobs
setopt completeinword
setopt sharehistory
setopt histexpiredupsfirst
setopt histignorespace

bindkey -e
stty stop undef

eval $(dircolors -b)

# zstyle :compinstall filename "$HOME/.zshrc"
autoload -Uz compinit && compinit
zstyle ':completion:*:default'         list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:descriptions'    format $'%{\e[0;31m%}completing %B%d%b%{\e[0m%}'
zstyle ':completion:*:matches'         group 'yes'
zstyle ':completion:*'                 group-name ''
zstyle ':completion:*'                 menu select
zstyle ':completion:*:warnings'        format $'%{\e[0;31m%}No matches for:%{\e[0m%} %d'
zstyle ':completion:*:processes-names' command 'ps c -u ${USER} -o command | uniq'
zstyle ':completion:*'                 matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*'                 special-dirs ..
zstyle ':acceptline:*'                 rehash true

PS1='[%F{red}%B%(?..%? )%b%F{green}%n%f@%F{magenta}%m %F{blue}%B%1~%b%f]$ '

autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line

alias ls='eza'
alias la='eza -a'
alias ll='eza -al'
alias tree='eza --tree'

alias mv='mv -i'
alias cp='cp -i'

alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip -color=auto'

alias vim='nvim'
alias vimdiff='nvim -d'

# echo '( .-.)'

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
