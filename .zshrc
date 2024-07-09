[ -z "$HISTFILE" ] && HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000

setopt nobeep
setopt longlistjobs
setopt completeinword
setopt sharehistory
setopt histexpiredupsfirst
setopt histignorespace
setopt promptsubst

bindkey -e
stty -ixon

zstyle ':zim:prompt-pwd:fish-style' dir-length 1

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
zstyle ':vcs_info:git:*' formats ' (%b)'

PROMPT='%F{blue}%B$(prompt-pwd)%b%f%F{yellow}${vcs_info_msg_0_}%f%(?.. %F{red}[%?]%f) %# '

autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line

if [ -x "$(command -v eza)" ]; then
    alias ls='eza'
    alias la='eza -a'
    alias ll='eza -al'
    alias tree='eza --tree'
else
    alias ls='ls --color=auto'
    alias la='ls --color=auto -a'
    alias ll='ls --color=auto -al'
fi

alias mv='mv -i'
alias cp='cp -i'

alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip -color=auto'


## zim config

zstyle ':zim:zmodule' use 'degit'

ZIM_HOME=~/.zim

# Download zimfw plugin manager if missing.
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh \
      https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
fi

# Install missing modules and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZIM_CONFIG_FILE:-${ZDOTDIR:-${HOME}}/.zimrc} ]]; then
  source ${ZIM_HOME}/zimfw.zsh init -q
fi

source ${ZIM_HOME}/init.zsh
