# ENV
#
export EDITOR='vim'

# ZSH
#
# re-enable back-i-search with ohmyzsh vi-mode plugin
bindkey "^R" history-incremental-search-backward

# home and end
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line

# history
setopt APPEND_HISTORY
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

#arch aliases
alias wifi='sudo wifi-menu'
alias xclip='xclip -sel c'
alias ls='ls --color'
alias ll='ls -lah --color'

